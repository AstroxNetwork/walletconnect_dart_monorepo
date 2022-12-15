import 'dart:async';

import 'package:walletconnect_mono_foundation/foundation.dart';

import 'errors.dart';
import 'json_rpc_interactor.dart';
import 'key_management.dart';
import 'metadata_store.dart';
import 'model/app_meta_data.dart';
import 'model/pairing.dart';
import 'model/pairing_rpc.dart';
import 'model/wc.dart';
import 'pairing.dart';
import 'pairing_store.dart';
import 'snippets.dart';
import 'tags.dart';

class PairingEngine implements IPairing {
  final IKeyManagement keyManagement;
  final IPairingStore pairingStore;
  final IMetadataStore metadataStore;
  final IJsonRpcInteractor jsonRpcInteractor;
  final Set<String> registeredMethods;
  final AppMetaData appMetaData;

  PairingEngine(
    this.keyManagement,
    this.pairingStore,
    this.metadataStore,
    this.jsonRpcInteractor,
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
        metadataStore.addOrUpdate(topic, AppMetaDataType.self, appMetaData),
        jsonRpcInteractor.subscribe(topic, timeout: timeout)
      ].waitOr();
      return pairing;
    } catch (e) {
      await [
        keyManagement.removeKeys(topic),
        pairingStore.delete(topic),
        metadataStore.delete(topic, AppMetaDataType.self),
      ].waitOr();
      rethrow;
    }
  }

  @override
  FutureOr<void> disconnect(String topic, {Duration? timeout}) async {
    if (!(await _isTopicValid(topic))) {
      throw CannotFindSequenceForTopicError(
        '${ErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    await [
      pairingStore.delete(topic),
      metadataStore.delete(topic),
      jsonRpcInteractor.unsubscribe(topic, timeout: timeout),
    ].waitOr();
    await jsonRpcInteractor.publishRequest(
      topic: topic,
      params: IrnParams(tag: Tags.pairingDelete.id, ttl: day1),
      payload: newPairingDelete(
        id: generateId(),
        params: const DeleteParams(code: 6000, message: 'User disconnected'),
      ),
    );
  }

  @override
  FutureOr<void> pair(Uri uri, {Duration? timeout}) async {
    final wcUri = WalletConnectUri.fromUri(uri);
    if (wcUri == null) {
      throw MalformedWalletConnectUriError(
        ErrorMessages.MALFORMED_PAIRING_URI_MESSAGE,
      );
    }
    final topic = wcUri.topic;
    if (!(await _isTopicValid(topic))) {
      throw PairWithExistingPairingIsNotAllowedError(
        ErrorMessages.PAIRING_NOW_ALLOWED_MESSAGE,
      );
    }
    final pairing = Pairing.active(wcUri, registeredMethods);
    await keyManagement.setKey(topic, wcUri.symKey);
    try {
      await [
        pairingStore.add(pairing),
        jsonRpcInteractor.subscribe(topic, timeout: timeout),
      ].waitOr();
    } catch (e) {
      await [
        pairingStore.delete(topic),
        jsonRpcInteractor.unsubscribe(topic, timeout: timeout),
      ].waitOr();
      rethrow;
    }
  }

  Future<bool> _isTopicValid(String topic) async {
    final orNull = await pairingStore.getOrNull(topic);
    if (orNull == null) {
      return false;
    }
    return _isPairingValid(orNull);
  }

  Future<bool> _isPairingValid(Pairing pairing) async {
    if (pairing.expiry > currentAtDuration) {
      final topic = pairing.topic;
      await [
        jsonRpcInteractor.unsubscribe(topic),
        pairingStore.delete(topic),
        metadataStore.delete(topic),
        keyManagement.removeKeys(topic),
      ].waitOr();
      return false;
    }
    return true;
  }

  @override
  FutureOr<List<Pairing>> pairings() {
    return pairingStore.validList();
  }

  @override
  FutureOr<void> ping(String topic, {Duration? timeout}) async {
    if (await _isTopicValid(topic)) {
      await jsonRpcInteractor.publishRequest(
        topic: topic,
        params: IrnParams(tag: Tags.pairingPing.id, ttl: second30),
        payload: newPairingPing(id: generateId()),
      );
      return;
    }

    throw CannotFindSequenceForTopicError(
      '${ErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
    );
  }

  void register(String method) {
    registeredMethods.add(method);
  }

  void registers(Iterable<String> methods) {
    registeredMethods.addAll(methods);
  }

  @override
  FutureOr<void> activate(String topic, {Duration? timeout}) async {
    final pairing = await pairingStore.getOrNull(topic);
    if (pairing == null) {
      throw StateError('Pairing for topic $topic does not exist');
    }
    if (!(await _isPairingValid(pairing))) {
      throw StateError('Pairing for topic $topic is expired');
    }
    await pairingStore.activate(topic);
  }
}
