import 'dart:async';
import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:tuple/tuple.dart';
import 'package:walletconnect_mono_core/core.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

class HiveKeyStore extends IKeyStore {

  final Box<Uint8List> box;

  const HiveKeyStore(this.box);

  @override
  FutureOr<bool> containsKey(String tag) {
    return box.containsKey(tag);
  }

  @override
  FutureOr<Key?> getKey(String tag) {
    return box.get(tag);
  }

  @override
  FutureOr<SimpleKeyPair?> getKeyPair(PublicKey publicKey) {
    final privateKey = box.get(publicKey.bytesToHex());
    if (privateKey == null) {
      return null;
    }
    return Tuple2(publicKey, privateKey);
  }

  @override
  FutureOr<SimpleKeyPair?> getKeys(String tag) {
    final keys = box.get(tag);
    if (keys == null) {
      return null;
    }
    final half = keys.length ~/ 2;
    return Tuple2(keys.sublist(0, half), keys.sublist(half));
  }

  @override
  FutureOr<void> removeKeyPair(PublicKey publicKey) {
    return box.delete(publicKey.bytesToHex());
  }

  @override
  FutureOr<void> removeKeys(String tag) {
    return box.delete(tag);
  }

  @override
  FutureOr<void> setKey(String tag, Key key) {
    return box.put(tag, key);
  }

  @override
  FutureOr<void> setKeyPair(PublicKey publicKey, PrivateKey privateKey) {
    return box.put(publicKey.bytesToHex(), privateKey);
  }

  @override
  FutureOr<void> setKeys(String tag, Key key1, Key key2) {
    return box.put(tag, Uint8List.fromList([...key1, ...key2]));
  }

  @override
  FutureOr<void> clear() async {
    await box.clear();
  }
}
