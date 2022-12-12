import 'dart:async';

import 'package:walletconnect_mono_foundation/foundation.dart';

abstract class IKeyStore {
  const IKeyStore();

  FutureOr<Key?> getKey(String tag);

  FutureOr<void> setKey(String tag, Key key);

  FutureOr<SimpleKeyPair?> getKeys(String tag);

  FutureOr<void> setKeys(String tag, Key key1, Key key2);

  FutureOr<void> setKeyPair(PublicKey publicKey, PrivateKey privateKey);

  FutureOr<SimpleKeyPair?> getKeyPair(PublicKey publicKey);

  FutureOr<void> removeKeyPair(PublicKey publicKey);

  FutureOr<void> removeKeys(String tag);

  FutureOr<void> clear();

  FutureOr<bool> containsKey(String tag);
}
