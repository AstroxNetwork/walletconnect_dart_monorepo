import 'dart:async';

import 'package:walletconnect_mono_core/core.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

class JwtStore extends BaseJwtStore {
  final IKeyStore keyStore;

  const JwtStore(this.keyStore);

  @override
  FutureOr<void> setKeyPair(
    PublicKey publicKey,
    PrivateKey privateKey, {
    String key = BaseJwtStore.keyDidKeypair,
  }) {
    return keyStore.setKeys(key, publicKey, privateKey);
  }

  @override
  FutureOr<SimpleKeyPair> getKeyPair({
    String key = BaseJwtStore.keyDidKeypair,
  }) async {
    final keyPair = await keyStore.getKeys(key);
    if (keyPair != null) {
      return keyPair;
    }
    return super.getKeyPair(key: key);
  }
}
