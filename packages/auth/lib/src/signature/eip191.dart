import 'dart:typed_data';

import 'package:walletconnect_mono_foundation/foundation.dart';

import 'keys.dart';
import 'sign.dart';

class EIP191Signer {
  const EIP191Signer._();

  static SignatureData signBytes(Uint8List message, Uint8List privateKey) {
    return Sign.signPrefixedMessage(
      message,
      ECKeyPair.fromPrivateKeyBytes(privateKey),
    );
  }

  static SignatureData signBytesNoPrefix(
    Uint8List message,
    Uint8List privateKey,
  ) {
    return Sign.signMessage(
      message,
      ECKeyPair.fromPrivateKeyBytes(privateKey),
    );
  }

  static SignatureData signString(String message, Uint8List privateKey) {
    return signBytes(message.toBytes(), privateKey);
  }

  static SignatureData signStringNoPrefix(
    String message,
    Uint8List privateKey,
  ) {
    return signBytesNoPrefix(message.toBytes(), privateKey);
  }
}

class EIP191Verifier {
  const EIP191Verifier._();

  static bool verifyMessageBytes(
    SignatureData signature,
    Uint8List originalMessage,
    String address,
  ) {
    return getAddressUsedToSignPrefixedMessage(signature, originalMessage) ==
        address.removePrefixIfExist().toLowerCase();
  }

  static bool verifyMessageBytesNoPrefix(
    SignatureData signature,
    Uint8List originalMessage,
    String address,
  ) {
    return getAddressUsedToSignMessage(signature, originalMessage) ==
        address.removePrefixIfExist().toLowerCase();
  }

  static bool verifyMessage(
    SignatureData signature,
    String originalMessage,
    String address,
  ) {
    return getAddressUsedToSignPrefixedMessage(
          signature,
          originalMessage.toBytes(),
        ) ==
        address.removePrefixIfExist().toLowerCase();
  }

  static bool verifyMessageNoPrefix(
    SignatureData signature,
    String originalMessage,
    String address,
  ) {
    return getAddressUsedToSignMessage(
          signature,
          originalMessage.toBytes(),
        ) ==
        address.removePrefixIfExist().toLowerCase();
  }

  static String getAddressUsedToSignPrefixedMessage(
    SignatureData signedHash,
    Uint8List originalMessage,
  ) {
    final key = Sign.signedPrefixedMessageToKey(originalMessage, signedHash);
    return Keys.getAddress(key.toRadixString(16));
  }

  static String getAddressUsedToSignMessage(
    SignatureData signedHash,
    Uint8List originalMessage,
  ) {
    final key = Sign.signedMessageToKey(originalMessage, signedHash);
    return Keys.getAddress(key.toRadixString(16));
  }
}
