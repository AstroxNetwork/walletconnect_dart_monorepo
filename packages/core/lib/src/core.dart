import 'package:walletconnect_mono_core/core.dart';
import 'package:walletconnect_mono_core/src/pairing.dart';

class Core {
  final AppMetaData metadata;
  final String relayServerUrl;
  final IPairing pairing;

  const Core({
    required this.metadata,
    required this.relayServerUrl,
    required this.pairing,
  });
}
