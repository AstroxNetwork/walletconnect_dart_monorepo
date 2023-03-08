import 'dart:async';
import 'dart:typed_data';

import 'package:tuple/tuple.dart';
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

class MemKeyStore extends IKeyStore {
  late final _store = <String, Uint8List>{};

  @override
  FutureOr<bool> containsKey(String tag) {
    return _store.containsKey(tag);
  }

  @override
  FutureOr<Key?> getKey(String tag) {
    return _store[tag];
  }

  @override
  FutureOr<SimpleKeyPair?> getKeyPair(PublicKey publicKey) {
    final privateKey = _store[publicKey.bytesToHex()];
    if (privateKey == null) {
      return null;
    }
    return Tuple2(publicKey, privateKey);
  }

  @override
  FutureOr<SimpleKeyPair?> getKeys(String tag) {
    final keys = _store[tag];
    if (keys == null) {
      return null;
    }
    final half = keys.length ~/ 2;
    return Tuple2(keys.sublist(0, half), keys.sublist(half));
  }

  @override
  FutureOr<void> removeKeyPair(PublicKey publicKey) {
    _store.remove(publicKey.bytesToHex());
  }

  @override
  FutureOr<void> removeKeys(String tag) {
    _store.remove(tag);
  }

  @override
  FutureOr<void> setKey(String tag, Key key) {
    _store[tag] = key;
  }

  @override
  FutureOr<void> setKeyPair(PublicKey publicKey, PrivateKey privateKey) {
    _store[publicKey.bytesToHex()] = privateKey;
  }

  @override
  FutureOr<void> setKeys(String tag, Key key1, Key key2) {
    _store[tag] = Uint8List.fromList([...key1, ...key2]);
  }

  @override
  FutureOr<void> clear() async {
    _store.clear();
  }
}
