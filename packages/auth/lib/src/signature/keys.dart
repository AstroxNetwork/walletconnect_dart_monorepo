import 'dart:typed_data';

import 'package:walletconnect_mono_core/core.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

/// Crypto key utilities. */
class Keys {
  const Keys._();

  static const int PRIVATE_KEY_SIZE = 32;
  static const int PUBLIC_KEY_SIZE = 64;

  static const int ADDRESS_SIZE = 160;
  static const int ADDRESS_LENGTH_IN_HEX = ADDRESS_SIZE >> 2;
  static const int PUBLIC_KEY_LENGTH_IN_HEX = PUBLIC_KEY_SIZE << 1;
  static const int PRIVATE_KEY_LENGTH_IN_HEX = PRIVATE_KEY_SIZE << 1;

  static String getAddress(String publicKey) {
    String publicKeyNoPrefix = publicKey.removePrefixIfExist();

    if (publicKeyNoPrefix.length < PUBLIC_KEY_LENGTH_IN_HEX) {
      publicKeyNoPrefix =
          '0'.repeat(PUBLIC_KEY_LENGTH_IN_HEX - publicKeyNoPrefix.length) +
              publicKeyNoPrefix;
    }
    final hash = publicKeyNoPrefix.toSha3HexString(withPrefix: true);
    return hash
        .substring(hash.length - ADDRESS_LENGTH_IN_HEX); // right most 160 bits
  }

  static Uint8List getAddressFromBytes(Uint8List publicKey) {
    final hash = publicKey.toSha3Bytes();
    return hash.sublist(hash.length - 20);
  }

  /// Checksum address encoding as per <a
  /// href="https://github.com/ethereum/EIPs/blob/master/EIPS/eip-55.md">EIP-55</a>.
  ///
  /// [address] a valid hex encoded address
  /// return hex encoded checksum address
  static String toChecksumAddress(String address) {
    final lowerCaseAddress = address.removePrefixIfExist().toLowerCase();
    final addressHash = lowerCaseAddress.toSha3HexString();

    final result = StringBuffer('0x');

    for (int i = 0; i < lowerCaseAddress.length; i++) {
      if (int.parse(addressHash[i], radix: 16) >= 8) {
        result.write(lowerCaseAddress[i].toUpperCase());
      } else {
        result.write(lowerCaseAddress[i]);
      }
    }
    return result.toString();
  }
}
