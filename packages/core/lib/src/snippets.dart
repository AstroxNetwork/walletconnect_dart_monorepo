import 'dart:typed_data';

import 'package:pointycastle/export.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';



DateTime get currentAt => DateTime.now();

Duration get currentAtDuration => Duration(microseconds: currentAt.microsecondsSinceEpoch);

Duration get day1 => const Duration(days: 1);
Duration get second30 => const Duration(days: 1);

DateTime get inactivePairingAt => currentAt.add(const Duration(minutes: 5));

DateTime get activePairingAt => currentAt.add(const Duration(days: 30));


extension StringExtension on String {
  /// Keccak-256 hash function that operates on a UTF-8 encoded String.
  ///
  /// UTF-8 encoded string
  /// return hash value as hex encoded string
  String toSha3HexString({bool withPrefix = false}) {
    return toSha3Bytes().bytesToHex(withPrefix: withPrefix);
  }

  /// Keccak-256 hash function.
  ///
  /// Hex encoded input data with optional 0x prefix
  /// return hash bytes.
  Uint8List toSha3Bytes() {
    return toBytes().toSha3Bytes();
  }
}

extension ListIntExtension on List<int> {
  Uint8List toSha3Bytes() {
    return toBytes().toSha3Bytes();
  }
}

extension BytesExtension on Uint8List {
  Uint8List toSha3Bytes() {
    final keccak = KeccakDigest(256);
    return keccak.process(this);
  }
}
