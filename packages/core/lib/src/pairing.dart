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
import 'pairing_store.dart';
import 'snippets.dart';
import 'tags.dart';

typedef PairingPingSuccess = void Function(String topic);

abstract class IPairing {
  FutureOr<Pairing> create({Duration? timeout});

  FutureOr<void> pair(Uri uri, {Duration? timeout});

  FutureOr<void> disconnect(String topic, {Duration? timeout});

  FutureOr<RelayPublishResult> ping(String topic, {Duration? timeout});

  FutureOr<void> activate(String topic, {Duration? timeout});

  FutureOr<void> updateExpiry(String topic, Duration expiry);

  FutureOr<void> updateMetadata(
    String topic,
    AppMetaDataType appMetaDataType,
    AppMetaData metadata,
  );

  FutureOr<List<Pairing>> pairings();
}

class PairingClient implements IPairing {
  final IKeyManagement keyManagement;
  final IPairingStore pairingStore;
  final IMetadataStore metadataStore;
  final IJsonRpcInteractor jsonRpcInteractor;
  final Set<String> registeredMethods;
  final AppMetaData appMetaData;

  const PairingClient(
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
        '${CoreErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    await [
      pairingStore.delete(topic),
      metadataStore.delete(topic),
      jsonRpcInteractor.unsubscribe(topic, timeout: timeout),
    ].waitOr();
    final reason = Reason.userDisconnected();
    await jsonRpcInteractor.publishRequest(
      topic: topic,
      params: IrnParams(tag: Tags.pairingDelete.id, ttl: day1),
      payload: newPairingDelete(
        id: generateId(),
        params: PairingDeleteParams(
          code: reason.code,
          message: reason.message!,
        ),
      ),
    );
  }

  @override
  FutureOr<void> pair(Uri uri, {Duration? timeout}) async {
    final wcUri = WalletConnectUri.fromUri(uri);
    if (wcUri == null) {
      throw MalformedWalletConnectUriError(
        CoreErrorMessages.MALFORMED_PAIRING_URI_MESSAGE,
      );
    }
    final topic = wcUri.topic;
    if (!(await _isTopicValid(topic))) {
      throw PairWithExistingPairingIsNotAllowedError(
        CoreErrorMessages.PAIRING_NOW_ALLOWED_MESSAGE,
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
  Future<RelayPublishResult> ping(String topic, {Duration? timeout}) async {
    if (await _isTopicValid(topic)) {
      return jsonRpcInteractor.publishRequest(
        topic: topic,
        params: IrnParams(tag: Tags.pairingPing.id, ttl: second30),
        payload: newPairingPing(id: generateId()),
      );
    }

    throw CannotFindSequenceForTopicError(
      '${CoreErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
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

  @override
  FutureOr<void> updateExpiry(String topic, Duration expiry) async {
    final pairing = await pairingStore.getOrNull(topic);
    if (pairing == null) {
      throw CannotFindSequenceForTopicError(
        '${CoreErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    if (!(await _isPairingValid(pairing))) {
      throw CannotFindSequenceForTopicError(
        '${CoreErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    return pairingStore
        .update(pairing.copyWith(expiry: pairing.expiry + expiry));
  }

  @override
  FutureOr<void> updateMetadata(
    String topic,
    AppMetaDataType appMetaDataType,
    AppMetaData metadata,
  ) async {
    return metadataStore.update(topic, appMetaDataType, metadata);
  }
}
