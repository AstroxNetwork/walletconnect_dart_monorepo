import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';


typedef ObjectConvert<T, R> = R Function(T value);
typedef ObjectFactory<T> = T Function(dynamic value);
typedef Supplier<T> = T Function();
typedef AsyncSupplier<T> = FutureOr<T> Function();
typedef OnError = void Function(Object error, [StackTrace? stackTrace]);
typedef OnData<T> = void Function(T value);


int generateId() {
  return DateTime.now().millisecondsSinceEpoch;
}

Uint8List randomBytes(int length) {
  final random = Random.secure();
  final bytes = Uint8List(length);
  for (var i = 0; i < length; i++) {
    bytes[i] = random.nextInt(128);
  }
  return bytes;
}

extension UriExtension on Uri {
  String strippedUrl() {
    return '$scheme://$authority';
  }
}

extension BytesExtension on List<int> {
  Uint8List toBytes() =>
      this is Uint8List ? this as Uint8List : Uint8List.fromList(this);

  String bytesToHex({bool withPrefix = false}) {
    return withPrefix ? '0x${hex.encode(this)}' : hex.encode(this);
  }

  String bytesToString() {
    return utf8.decode(this);
  }

  /// Decode a BigInt from bytes in big-endian encoding.
  /// Twos compliment.
  BigInt toBigInt() {
    final bytes = this;
    final negative = bytes.isNotEmpty && bytes[0] & 0x80 == 0x80;

    BigInt result;

    if (bytes.length == 1) {
      result = BigInt.from(bytes[0]);
    } else {
      result = BigInt.zero;
      for (var i = 0; i < bytes.length; i++) {
        var item = bytes[bytes.length - i - 1];
        result |= BigInt.from(item) << (8 * i);
      }
    }
    return result != BigInt.zero
        ? negative
            ? result.toSigned(result.bitLength)
            : result
        : BigInt.zero;
  }

  /// Decode a big integer with arbitrary sign.
  /// When:
  /// sign == 0: Zero regardless of magnitude
  /// sign < 0: Negative
  /// sign > 0: Positive
  BigInt toBigIntWithSign(int sign) {
    List<int> magnitude = this;
    if (sign == 0) {
      return BigInt.zero;
    }

    BigInt result;

    if (magnitude.length == 1) {
      result = BigInt.from(magnitude[0]);
    } else {
      result = BigInt.from(0);
      for (var i = 0; i < magnitude.length; i++) {
        var item = magnitude[magnitude.length - i - 1];
        result |= BigInt.from(item) << (8 * i);
      }
    }

    if (result != BigInt.zero) {
      if (sign < 0) {
        result = result.toSigned(result.bitLength);
      } else {
        result = result.toUnsigned(result.bitLength);
      }
    }
    return result;
  }
}

extension StringExtension on String {
  Uint8List hexToBytes() {
    return hex.decode(this).toBytes();
  }

  String removePrefixIfExist([String prefix = '0x']) {
    if (startsWith(prefix)) {
      return substring(prefix.length);
    }
    return this;
  }

  List<String> chunked(int size) {
    final resultCapacity =
        (length / size).floor() + (length % size == 0 ? 0 : 1);
    return List.generate(
      resultCapacity,
      (index) {
        final end = (index + 1) * size;
        return substring(index * size, end > length ? length : end);
      },
      growable: false,
    );
  }

  Uint8List toBytes() {
    return utf8.encode(this).toBytes();
  }

  String repeat(int num) {
    assert(num > 0);
    final sb = StringBuffer();
    for (int i = 0; i < num; i++) {
      sb.write(this);
    }
    return sb.toString();
  }
}

extension DateTimeExtension on DateTime {
  Duration toDuration() => Duration(milliseconds: millisecondsSinceEpoch);
}

var _byteMask = BigInt.from(0xff);
final negativeFlag = BigInt.from(0x80);

extension BigIntExtensions on BigInt {
  /// Encode a BigInt into bytes using big-endian encoding.
  /// It encodes the integer to a minimal twos-compliment integer as defined by
  /// ASN.1
  Uint8List toBytes() {
    BigInt number = this;
    if (number == BigInt.zero) {
      return Uint8List.fromList([0]);
    }

    int needsPaddingByte;
    int rawSize;

    if (number > BigInt.zero) {
      rawSize = (number.bitLength + 7) >> 3;
      needsPaddingByte =
          ((number >> (rawSize - 1) * 8) & negativeFlag) == negativeFlag
              ? 1
              : 0;
    } else {
      needsPaddingByte = 0;
      rawSize = (number.bitLength + 8) >> 3;
    }

    final size = rawSize + needsPaddingByte;
    var result = Uint8List(size);
    for (var i = 0; i < rawSize; i++) {
      result[size - i - 1] = (number! & _byteMask).toInt();
      number = number >> 8;
    }
    return result;
  }

  /// Encode as Big Endian unsigned byte array.
  Uint8List toBytesAsUnsigned() {
    BigInt number = this;
    if (number == BigInt.zero) {
      return Uint8List.fromList([0]);
    }
    final size = number.bitLength + (number.isNegative ? 8 : 7) >> 3;
    final result = Uint8List(size);
    for (int i = 0; i < size; i++) {
      result[size - i - 1] = (number & _byteMask).toInt();
      number = number >> 8;
    }
    return result;
  }

  Uint8List toBytesPadded(int length) {
    BigInt value = this;
    Uint8List bytes = value.toBytes();

    int bytesLength;
    int srcOffset;
    if (bytes[0] == 0) {
      bytesLength = bytes.length - 1;
      srcOffset = 1;
    } else {
      bytesLength = bytes.length;
      srcOffset = 0;
    }

    if (bytesLength > length) {
      throw ArgumentError(
        'Input is too large to put in byte array of size $length',
      );
    }

    int destOffset = length - bytesLength;
    final result = Uint8List(length);
    arrayCopy(bytes, srcOffset, result, destOffset, bytesLength);
    return result;
  }
}

void arrayCopy(
  Uint8List? sourceArr,
  int sourcePos,
  Uint8List? outArr,
  int outPos,
  int len,
) {
  for (var i = 0; i < len; i++) {
    outArr![outPos + i] = sourceArr![sourcePos + i];
  }
}

extension FutureOrExtension<T> on Iterable<FutureOr<T>> {
  Future<List<T>> waitOr({
    bool eagerError = false,
    void Function(T successValue)? cleanUp,
  }) {
    return Future.wait(
      map((e) => e is Future<T> ? e : Future.value(e)),
      eagerError: eagerError,
      cleanUp: cleanUp,
    );
  }
}

extension ObjectExtension on Object? {
  String toJsonString() {
    return jsonEncode(this);
  }
}
