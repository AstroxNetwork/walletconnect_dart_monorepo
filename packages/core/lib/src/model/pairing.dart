import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

import '../snippets.dart';
import 'app_meta_data.dart';
import 'sequence.dart';
import 'wc.dart';

part 'pairing.freezed.dart';

part 'pairing.g.dart';

@freezed
class Pairing extends Sequence with _$Pairing {
  const factory Pairing({
    @TopicConverter() required String topic,
    @ExpiryConverter() required Duration expiry,
    AppMetaData? peerAppMetaData,
    required String relayProtocol,
    String? relayData,
    @UriStringConverter() required Uri uri,
    required bool isActive,
    required String registeredMethods,
  }) = _Pairing;

  factory Pairing.fromJson(Map<String, Object?> json) =>
      _$PairingFromJson(json);

  factory Pairing.inactive({
    required String topic,
    required RelayProtocolOptions relay,
    required SymmetricKey symmetricKey,
    required String registeredMethods,
  }) {
    return Pairing(
      topic: topic,
      expiry: inactivePairingAt.toDuration(),
      relayProtocol: relay.protocol,
      relayData: relay.data,
      uri: WalletConnectUri(topic: topic, symKey: symmetricKey, relay: relay)
          .toUri(),
      isActive: false,
      registeredMethods: registeredMethods,
    );
  }

  factory Pairing.active(WalletConnectUri uri, String registeredMethods) {
    return Pairing(
      topic: uri.topic,
      expiry: activePairingAt.toDuration(),
      relayProtocol: uri.relay.protocol,
      relayData: uri.relay.data,
      uri: uri.toUri(),
      isActive: true,
      registeredMethods: registeredMethods,
    );
  }
}
