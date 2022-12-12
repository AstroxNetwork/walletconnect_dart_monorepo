import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart' hide SimpleKeyPair;
import 'package:tuple/tuple.dart';

import 'base58.dart';
import 'model/irn.dart';
import 'model/key_pair.dart';
import 'snippets.dart';

// ignore: one_member_abstracts
abstract class IJwtStore {
  Future<String> generateJWT(String serverUrl, void Function(String clientId) getIssuer);
}

typedef Key = Uint8List;
typedef PrivateKey = Uint8List;
typedef PublicKey = Uint8List;

class BaseJwtStore implements IJwtStore {
  static const keyDidKeypair = 'key_did_keypair';
  static const jwtIrnHeader = IrnJWTHeader(algorithm: 'EdDSA', type: 'JWT');
  static const keySize = 32;
  static const keyNonceSize = keySize;
  static const jwtDelimiter = '.';
  static const didDelimiter = ':';
  static const didPrefix = 'did';
  static const didMethod = 'key';
  static const multicodecEd25519Header = 'K36';

  const BaseJwtStore();

  FutureOr<void> setKeyPair(
    PublicKey publicKey,
    PrivateKey privateKey, {
    String key = keyDidKeypair,
  }) {}

  FutureOr<SimpleKeyPair> getKeyPair({String key = keyDidKeypair}) {
    return getDIDFromNewKeyPair();
  }

  String encodeBytes(List<int> bytes) {
    return base64Url.encode(bytes).replaceAll('=', '');
  }

  @override
  Future<String> generateJWT(
    String serverUrl,
    void Function(String clientId) getIssuer,
  ) async {
    final subject = generateSubject();
    final keyPair = await getKeyPair();
    final issuer = _encodeIss(keyPair.publicKey);
    getIssuer(issuer);
    final issuedAt = Duration(milliseconds: getCurrentTimestamp()).inSeconds;
    final expiration = _jwtExp(issuedAt);
    final payload = IrnJWTPayload(
      issuer: issuer,
      subject: subject,
      audience: serverUrl,
      issuedAt: issuedAt,
      expiration: expiration,
    );
    final data = _encodeData(jwtIrnHeader, payload);
    final ed25519 = Ed25519();
    final signature = await ed25519.sign(
      utf8.encode(data),
      keyPair: SimpleKeyPairData(
        keyPair.privateKey,
        publicKey: SimplePublicKey(
          keyPair.publicKey,
          type: KeyPairType.ed25519,
        ),
        type: KeyPairType.ed25519,
      ),
    );
    return _encodeJWT(jwtIrnHeader, payload, signature.bytes);
  }

  String _encodeIss(List<int> publicKey) {
    final header = Base58.decode(multicodecEd25519Header);
    // `z` is `Base58BTC` prefix.
    final multiCodec = 'z${Base58.encode(header + publicKey)}';
    return [didPrefix, didMethod, multiCodec].join(didDelimiter);
  }

  String _encodeData(IrnJWTHeader header, IrnJWTPayload payload) {
    return [_encodeJSON(header), _encodeJSON(payload)].join(jwtDelimiter);
  }

  String _encodeJWT(
    IrnJWTHeader header,
    IrnJWTPayload payload,
    List<int> signature,
  ) {
    return [
      _encodeJSON(header),
      _encodeJSON(payload),
      encodeBytes(signature),
    ].join(jwtDelimiter);
  }

  String _encodeJSON(Object obj) {
    final json = jsonEncode(obj);
    return encodeBytes(utf8.encode(json));
  }

  Future<SimpleKeyPair> getDIDFromNewKeyPair() async {
    final algorithm = Ed25519();
    final newKeyPair = await algorithm.newKeyPair();
    final privateKey = await newKeyPair.extractPrivateKeyBytes();
    final publicKey = await newKeyPair.extractPublicKey();
    return Tuple2(publicKey.bytes.toBytes(), privateKey.toBytes());
  }

  String generateSubject() => randomBytes(keyNonceSize).bytesToHex();

  int _jwtExp(int issuedAt) {
    return issuedAt + const Duration(days: 1).inSeconds;
  }

  int getCurrentTimestamp() => DateTime.now().millisecondsSinceEpoch;
}
