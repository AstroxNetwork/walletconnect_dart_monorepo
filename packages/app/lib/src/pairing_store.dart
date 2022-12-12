import 'dart:async';

import 'package:hive/hive.dart';
import 'package:walletconnect_mono_core/core.dart';

class HivePairingStore extends IPairingStore {
  final Box<Map> box;

 const HivePairingStore(this.box);

  @override
  FutureOr<void> add(Pairing pairing) {
    return box.put(pairing.topic, pairing.toJson());
  }

  @override
  FutureOr<void> update(Pairing pairing) {
    return add(pairing);
  }

  @override
  FutureOr<void> addOrUpdate(Pairing pairing) {
    return add(pairing);
  }

  @override
  FutureOr<void> delete(String topic) {
    return box.delete(topic);
  }

  @override
  FutureOr<List<Pairing>> all() {
    return box.values
        .map((e) => Pairing.fromJson(e.cast<String, dynamic>()))
        .toList(growable: false);
  }

  @override
  FutureOr<Pairing?> getOrNull(String topic) {
    final dat = box.get(topic);
    return dat == null ? null : Pairing.fromJson(dat.cast<String, dynamic>());
  }

  @override
  FutureOr<bool> has(String topic) {
    return box.containsKey(topic);
  }

  @override
  FutureOr<void> clear() async {
    await box.clear();
  }
}
