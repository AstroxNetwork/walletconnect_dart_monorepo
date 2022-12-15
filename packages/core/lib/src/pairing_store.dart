import 'dart:async';

import 'package:walletconnect_mono_core/src/errors.dart';
import 'package:walletconnect_mono_core/src/model/pairing.dart';

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
