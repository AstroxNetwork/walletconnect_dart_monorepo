import 'dart:async';

import 'package:walletconnect_mono_foundation/foundation.dart';

import 'model/pairing.dart';

typedef PairingPingSuccess = void Function(String topic);

abstract class IPairing {
  FutureOr<Pairing> create({Duration? timeout});

  FutureOr<void> pair(Uri uri);

  FutureOr<void> disconnect(String topic);

  FutureOr<void> ping(String topic);

  FutureOr<List<Pairing>> pairings();
}
