import 'dart:async';

import 'package:walletconnect_mono_foundation/foundation.dart';

import 'key_management.dart';
import 'metadata_store.dart';
import 'model/app_meta_data.dart';
import 'model/pairing.dart';
import 'model/wc.dart';
import 'pairing.dart';
import 'pairing_store.dart';

class PairingEngine implements IPairing {
  final IKeyManagement keyManagement;
  final IPairingStore pairingStore;
  final IMetadataStore metadataStore;
  final Set<String> registeredMethods;
  final AppMetaData appMetaData;

  PairingEngine(
    this.keyManagement,
    this.pairingStore,
    this.metadataStore,
    this.registeredMethods,
    this.appMetaData,
  );

  @override
  FutureOr<Pairing> create({Duration? timeout}) async {
    final topic = randomBytes(32).bytesToHex();
    final symKey = await keyManagement.generateAndStoreSymmetricKey(topic);
    final pairing = Pairing.inactive(
      topic: topic,
      relay: const RelayProtocolOptions(),
      symmetricKey: symKey,
      registeredMethods: registeredMethods.join(','),
    );
    try {
      await [
        pairingStore.add(pairing),
        metadataStore.addOrUpdate(topic, AppMetaDataType.self, appMetaData)
      ].waitOr();
      return pairing;
    } catch (e, s) {
      await [
        keyManagement.removeKeys(topic),
        pairingStore.delete(topic),
        metadataStore.delete(topic, AppMetaDataType.self),
      ].waitOr();
      rethrow;
    }
  }

  @override
  FutureOr<void> disconnect(String topic) {
    // TODO: implement disconnect
    throw UnimplementedError();
  }

  @override
  FutureOr<void> pair(Uri uri) {
    // TODO: implement pair
    throw UnimplementedError();
  }

  @override
  FutureOr<List<Pairing>> pairings() {
    // TODO: implement pairings
    throw UnimplementedError();
  }

  @override
  FutureOr<void> ping(String topic) {
    // TODO: implement ping
    throw UnimplementedError();
  }
}
