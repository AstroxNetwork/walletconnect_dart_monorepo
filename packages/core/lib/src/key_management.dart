import 'dart:async';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart' hide PublicKey;
import 'package:pointycastle/export.dart' hide PublicKey;
import 'package:walletconnect_mono_core/src/snippets.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

import 'errors.dart';
import 'key_store.dart';
import 'model/wc.dart';

abstract class IKeyManagement {
  FutureOr<void> setKey(String tag, Key key);

  FutureOr<void> removeKeys(String tag);

  FutureOr<PublicKey> getPublicKey(String tag);

  FutureOr<SymmetricKey> getSymmetricKey(String tag);

  FutureOr<PublicKey> generateKeyPair();

  FutureOr<void> setKeyAgreement(String topic, PublicKey self, PublicKey peer);

  FutureOr<PublicKey> getSelfPublicFromKeyAgreement(String topic);

  FutureOr<SymmetricKey> generateAndStoreSymmetricKey(String topic);

  FutureOr<SymmetricKey> generateSymmetricKeyFromKeyAgreement(
    PublicKey self,
    PublicKey peer,
  );

  FutureOr<String> getTopicFromKey(Key key);

  FutureOr<String> generateTopicFromKeyAgreement(
    PublicKey self,
    PublicKey peer,
  );
}

class PointyCastleKeyManagement implements IKeyManagement {
  const PointyCastleKeyManagement(this.keyStore);

  final IKeyStore keyStore;

  static const keySize = 32;
  static const symKeySize = 256;
  static const sha256 = 'SHA-256';
  static const aes = 'AES';
  static const keyAgreementContext = 'key_agreement/';

  @override
  FutureOr<SymmetricKey> generateAndStoreSymmetricKey(String topic) async {
    final key = _createSymmetricKey();
    await keyStore.setKey(topic, key);
    return key;
  }

  @override
  FutureOr<PublicKey> generateKeyPair() async {
    final keyPair = await X25519().newKeyPair();
    final privateKey = await keyPair.extractPrivateKeyBytes();
    final spk = await keyPair.extractPublicKey();
    final publicKey = spk.bytes.toBytes();
    await keyStore.setKeyPair(publicKey, privateKey.toBytes());
    return publicKey;
  }

  @override
  FutureOr<SymmetricKey> generateSymmetricKeyFromKeyAgreement(
    PublicKey self,
    PublicKey peer,
  ) async {
    final keyPair = await keyStore.getKeyPair(self);
    if (keyPair == null) {
      throw MissingKeyError('No key pair for tag: ${self.bytesToHex()}');
    }
    final secretKey = await X25519().sharedSecretKey(
      keyPair: SimpleKeyPairData(
        keyPair.privateKey,
        publicKey: SimplePublicKey(self, type: KeyPairType.x25519),
        type: KeyPairType.x25519,
      ),
      remotePublicKey: SimplePublicKey(peer, type: KeyPairType.x25519),
    );
    final bytes = await secretKey.extractBytes();
    return _deriveHKDFKey(bytes.toBytes());
  }

  @override
  FutureOr<String> generateTopicFromKeyAgreement(
    PublicKey self,
    PublicKey peer,
  ) async {
    final symmetricKey = await generateSymmetricKeyFromKeyAgreement(self, peer);
    final topic = symmetricKey.bytesToHex().toSha3HexString();
    await keyStore.setKey(topic, symmetricKey);
    await setKeyAgreement(topic, self, peer);
    return topic;
  }

  @override
  FutureOr<PublicKey> getPublicKey(String tag) async {
    var key = await keyStore.getKey(tag);
    if (key == null) {
      throw MissingKeyError('No PublicKey for tag: $tag');
    }
    return key;
  }

  @override
  FutureOr<PublicKey> getSelfPublicFromKeyAgreement(String topic) async {
    final tag = '$keyAgreementContext$topic';
    final keys = await keyStore.getKeys(tag);
    if (keys == null) {
      throw MissingKeyError('No key pair for tag: $tag');
    }
    return keys.publicKey;
  }

  @override
  FutureOr<SymmetricKey> getSymmetricKey(String tag) async{
    var key = await keyStore.getKey(tag);
    if (key == null) {
      throw MissingKeyError('No SymmetricKey for tag: $tag');
    }
    return key;
  }

  @override
  FutureOr<String> getTopicFromKey(Key key) {
    return Digest('SHA-256').process(Uint8List.fromList(key)).bytesToHex();
  }

  @override
  FutureOr<void> removeKeys(String tag) {
    return keyStore.removeKeys(tag);
  }

  @override
  FutureOr<void> setKey(String tag, Key key) {
    return keyStore.setKey(tag, key);
  }

  @override
  FutureOr<void> setKeyAgreement(String topic, PublicKey self, PublicKey peer) {
    final tag = '$keyAgreementContext$topic';
    return keyStore.setKeys(tag, self, peer);
  }

  Uint8List _createSymmetricKey() {
    final random = SecureRandom();
    return random.nextBytes(symKeySize);
  }

  Uint8List _deriveHKDFKey(Uint8List ikm) {
    final hkdf = HKDFKeyDerivator(SHA256Digest());
    final hkdfParameters = HkdfParameters(ikm, keySize);
    hkdf.init(hkdfParameters);
    return hkdf.process(Uint8List(keySize));
  }
}
