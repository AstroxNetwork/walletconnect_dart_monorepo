import 'dart:async';

import 'model/pairing.dart';

typedef PairingPingSuccess = void Function(String topic);

abstract class IPairing {
  FutureOr<Pairing> create({Duration? timeout});

  FutureOr<void> pair(Uri uri, {Duration? timeout});

  FutureOr<void> disconnect(String topic, {Duration? timeout});

  FutureOr<void> ping(String topic, {Duration? timeout});

  FutureOr<void> activate(String topic, {Duration? timeout});

  FutureOr<List<Pairing>> pairings();
}
