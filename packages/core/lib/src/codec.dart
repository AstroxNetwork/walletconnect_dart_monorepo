import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:pointycastle/export.dart' hide PublicKey;
import 'package:walletconnect_mono_foundation/foundation.dart';

import '../core.dart';
import 'context.dart';

abstract class IWCCodec {
  FutureOr<String> encrypt(
    String topic,
    String payload,
    EnvelopeType envelopeType, {
    Participants? participants,
  });

  FutureOr<String> decrypt(String topic, String cipherText);
}

class ChaChaPolyCodec implements IWCCodec {
  static const nonceSize = 12;
  static const keySize = 32;
  static const envelopeTypeSize = 1;

  late final cha20Poly1305 = ChaCha20Poly1305(ChaCha7539Engine(), Poly1305());

  ChaChaPolyCodec(this.keyManagement);

  final IKeyManagement keyManagement;

  @override
  FutureOr<String> decrypt(String topic, String cipherText) async {
    final decode = base64.decode(cipherText);
    final type = EnvelopeType.of(decode.first);
    switch (type) {
      case EnvelopeType.zero:
        return _decryptType0(topic, decode);
      case EnvelopeType.one:
        final receiverPublicKey = await keyManagement.getPublicKey(
          '$SELF_PARTICIPANT_CONTEXT$topic',
        );
        return _decryptType1(receiverPublicKey, decode);
    }
  }

  @override
  FutureOr<String> encrypt(
    String topic,
    String payload,
    EnvelopeType envelopeType, {
    Participants? participants,
  }) {
    final input = payload.toBytes();
    final nonceBytes = randomBytes(nonceSize);
    switch (envelopeType) {
      case EnvelopeType.zero:
        return _encryptEnvelopeType0(topic, input, nonceBytes, envelopeType);
      case EnvelopeType.one:
        return _encryptEnvelopeType1(
          input,
          participants,
          nonceBytes,
          envelopeType,
        );
    }
  }

  Future<String> _encryptEnvelopeType0(
    String topic,
    Uint8List input,
    Uint8List nonceBytes,
    EnvelopeType type,
  ) async {
    final symmetricKey = await keyManagement.getSymmetricKey(topic);
    final cipherBytes = _encryptPayload(input, symmetricKey, nonceBytes);
    return base64.encode([type.id, ...nonceBytes, ...cipherBytes]);
  }

  Uint8List _encryptPayload(
    Uint8List input,
    SymmetricKey symmetricKey,
    Uint8List nonceBytes,
  ) {
    final parametersWithIV =
        ParametersWithIV(KeyParameter(symmetricKey), nonceBytes);
    cha20Poly1305.init(true, parametersWithIV);
    final cipherBytes = Uint8List(cha20Poly1305.getOutputSize(input.length));
    final processBytes =
        cha20Poly1305.processBytes(input, 0, input.length, cipherBytes, 0);
    cha20Poly1305.doFinal(cipherBytes, processBytes);
    return cipherBytes;
  }

  FutureOr<String> _encryptEnvelopeType1(
    Uint8List input,
    Participants? participants,
    Uint8List nonceBytes,
    EnvelopeType type,
  ) async {
    if (participants == null) {
      throw MissingParticipantsError(
        'Missing participants when encrypting envelope type 1',
      );
    }
    final self = participants.senderPublicKey;
    final symmetricKey =
        await keyManagement.generateSymmetricKeyFromKeyAgreement(
      self,
      participants.receiverPublicKey,
    );
    final cipherBytes = _encryptPayload(input, symmetricKey, nonceBytes);
    return base64.encode([type.id, ...self, ...nonceBytes, ...cipherBytes]);
  }

  FutureOr<String> _decryptType0(String topic, Uint8List decode) async {
    final symmetricKey = await keyManagement.getSymmetricKey(topic);
    final decryptedBytes = _decryptPayload(
      decode.sublist(nonceSize + 1),
      symmetricKey,
      decode.sublist(1, nonceSize + 1),
    );
    return decryptedBytes.bytesToString();
  }

  Uint8List _decryptPayload(
    Uint8List input,
    SymmetricKey symmetricKey,
    Uint8List nonceBytes,
  ) {
    final parametersWithIV =
        ParametersWithIV(KeyParameter(symmetricKey), nonceBytes);
    cha20Poly1305.init(false, parametersWithIV);
    final decryptedBytes = Uint8List(cha20Poly1305.getOutputSize(input.length));
    final processBytes =
        cha20Poly1305.processBytes(input, 0, input.length, decryptedBytes, 0);
    cha20Poly1305.doFinal(decryptedBytes, processBytes);
    return decryptedBytes;
  }

  FutureOr<String> _decryptType1(
    PublicKey receiverPublicKey,
    Uint8List encryptedBytes,
  ) async {
    final publicKey =
        encryptedBytes.sublist(envelopeTypeSize, keySize + envelopeTypeSize);
    final nonceBytes = encryptedBytes.sublist(
      keySize + envelopeTypeSize,
      keySize + envelopeTypeSize + nonceSize,
    );
    final payloadBytes =
        encryptedBytes.sublist(envelopeTypeSize + nonceSize + keySize);
    final symmetricKey =
        await keyManagement.generateSymmetricKeyFromKeyAgreement(
      receiverPublicKey,
      publicKey,
    );
    final decryptPayload =
        _decryptPayload(payloadBytes, symmetricKey, nonceBytes);
    return decryptPayload.bytesToString();
  }
}
