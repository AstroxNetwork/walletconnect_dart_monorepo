import 'package:walletconnect_mono_foundation/foundation.dart';

import 'model/app_meta_data.dart';


abstract class IPairingController {
  void activate(String topic, OnError onError);

  void updateExpiry(String topic, Duration expiry, OnError onError);

  void updateMetadata(
    String topic,
    AppMetaDataType type,
    AppMetaData metadata,
    OnError onError,
  );

  void register(Set<String> methods);
}
