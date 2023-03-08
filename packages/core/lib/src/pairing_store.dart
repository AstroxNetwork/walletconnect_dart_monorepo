import 'dart:async';

import 'package:walletconnect_mono_foundation/foundation.dart';

import '../core.dart';

abstract class IPairingStore {
  const IPairingStore();

  FutureOr<void> add(Pairing pairing);

  FutureOr<void> delete(String topic);

  FutureOr<void> update(Pairing pairing);

  FutureOr<void> addOrUpdate(Pairing pairing) async {
    if (await has(pairing.topic)) {
      await update(pairing);
    } else {
      await add(pairing);
    }
  }

  FutureOr<bool> has(String topic);

  FutureOr<Pairing> get(String topic) async {
    final pairing = await getOrNull(topic);
    if (pairing == null) {
      throw MissingPairingError('No pairing for topic: $topic');
    }
    return pairing;
  }

  FutureOr<Pairing?> getOrNull(String topic);

  FutureOr<List<Pairing>> all();

  FutureOr<List<Pairing>> validList();

  FutureOr<void> activate(String topic);

  FutureOr<void> clear();
}

class MemParingStore extends IPairingStore {
  late final _store = <String, Map>{};

  @override
  FutureOr<void> add(Pairing pairing) {
    _store[pairing.topic] = pairing.toJson();
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
    _store.remove(topic);
  }

  @override
  FutureOr<List<Pairing>> all() {
    return _store.values
        .map((e) => Pairing.fromJson(e.cast<String, dynamic>()))
        .toList(growable: false);
  }

  @override
  FutureOr<Pairing?> getOrNull(String topic) {
    final dat = _store[topic];
    return dat == null ? null : Pairing.fromJson(dat.cast<String, dynamic>());
  }

  @override
  FutureOr<bool> has(String topic) {
    return _store.containsKey(topic);
  }

  @override
  FutureOr<void> clear() async {
    _store.clear();
  }

  @override
  FutureOr<List<Pairing>> validList() {
    return _store.values
        .where(
          (e) =>
              e['isActive'] == true &&
              const ExpiryConverter().fromJson((e['expiry'] as Map).cast()) <
                  currentAtDuration,
        )
        .map((e) => Pairing.fromJson(e.cast()))
        .toList(growable: false);
  }

  @override
  FutureOr<void> activate(String topic) async {
    final value = await get(topic);
    return update(value.copyWith(isActive: true));
  }
}
