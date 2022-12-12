import 'dart:convert';

import 'package:walletconnect_mono_foundation/foundation.dart';

/// https://github.com/bitcoin/bitcoin/blob/master/src/base58.cpp

class Base58 {
  const Base58._();

  static final ALPHABET =
      '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz'.codeUnits;
  static final ENCODED_ZERO = ALPHABET[0];

  static final INDEXES = () {
    final list = List.filled(128, -1);
    for (int i = 0; i < ALPHABET.length; i++) {
      list[ALPHABET[i]] = i;
    }
    return list;
  }();

  /// Encodes the given bytes as a base58 string (no checksum is appended).
  ///
  /// [input] the bytes to encode
  ///
  /// return the base58-encoded string
  static String encode(List<int> input) {
    if (input.isEmpty) {
      return '';
    }
    int zeros = 0;
    while (zeros < input.length && input[zeros] == 0) {
      ++zeros;
    }
    // Convert base-256 digits to base-58 digits (plus conversion to ASCII characters)
    // since we modify it in-place
    input = List.of(input);
    // upper bound
    List<int> encoded = List.filled(input.length * 2, 0);
    int outputStart = encoded.length;
    for (int inputStart = zeros; inputStart < input.length;) {
      encoded[--outputStart] = ALPHABET[_divmod(input, inputStart, 256, 58)];
      if (input[inputStart] == 0) {
        // optimization - skip leading zeros
        ++inputStart;
      }
    }
    // Preserve exactly as many leading encoded zeros in output as there were leading zeros in input.
    while (
        outputStart < encoded.length && encoded[outputStart] == ENCODED_ZERO) {
      ++outputStart;
    }
    while (--zeros >= 0) {
      encoded[--outputStart] = ENCODED_ZERO;
    }
    // Return encoded string (including encoded leading zeros).
    return utf8.decode(encoded.sublist(outputStart));
  }

  /// Decodes the given base58 string into the original data bytes.
  ///
  /// [input] the base58-encoded string to decode
  /// return the decoded data bytes
  static List<int> decode(String input) {
    if (input.isEmpty) {
      return [];
    }
    // Convert the base58-encoded ASCII chars to a base58 byte sequence (base58 digits).
    List<int> input58 = [];
    for (int i = 0; i < input.length; ++i) {
      final c = input[i].codeUnitAt(0);
      final digit = c < 128 ? INDEXES[c] : -1;
      if (digit < 0) {
        throw StateError('InvalidCharacter in base 58');
      }
      input58.add(digit);
    }
    // Count leading zeros.
    int zeros = 0;
    while (zeros < input58.length && input58[zeros] == 0) {
      ++zeros;
    }
    // Convert base-58 digits to base-256 digits.
    List<int> decoded = List.filled(input.length, 0);
    int outputStart = decoded.length;
    for (int inputStart = zeros; inputStart < input58.length;) {
      decoded[--outputStart] = _divmod(input58, inputStart, 58, 256);
      if (input58[inputStart] == 0) {
        // optimization - skip leading zeros
        ++inputStart;
      }
    }
    // Ignore extra leading zeroes that were added during the calculation.
    while (outputStart < decoded.length && decoded[outputStart] == 0) {
      ++outputStart;
    }
    // Return decoded data (including original number of leading zeros).
    return decoded.sublist(outputStart - zeros);
  }

  static BigInt decodeToBigInteger(String input) {
    return decode(input).toBigIntWithSign(1);
  }

  /// Divides a number, represented as an array of bytes each containing a single digit
  /// in the specified base, by the given divisor. The given number is modified in-place
  /// to contain the quotient, and the return value is the remainder.
  ///
  /// [number] the number to divide
  /// [firstDigit] the index within the array of the first non-zero digit
  /// (this is used for optimization by skipping the leading zeros)
  /// [base] the base in which the number's digits are represented (up to 256)
  /// [divisor] the number to divide by (up to 256)
  ///
  /// the remainder of the division operation
  static int _divmod(List<int> number, int firstDigit, int base, int divisor) {
    // this is just long division which accounts for the base of the input digits
    int remainder = 0;
    for (int i = firstDigit; i < number.length; i++) {
      int digit = number[i] & 0xFF;
      int temp = remainder * base + digit;
      number[i] = temp ~/ divisor;
      remainder = temp % divisor;
    }
    return remainder;
  }
}
