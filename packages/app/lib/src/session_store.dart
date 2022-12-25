import 'dart:async';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:walletconnect_mono_core/core.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';
import 'package:walletconnect_mono_sign/sign.dart';

part 'session_store.freezed.dart';

part 'session_store.g.dart';

class HiveSessionStore implements ISessionStore {
  final Box<Map> box;

  const HiveSessionStore(this.box);

  @override
  FutureOr<void> acknowledgeSession(String topic) {
    final key = topic.sessionKey;
    final entry = box.get(key);
    if (entry != null) {
      entry['isAcknowledged'] = true;
      return box.put(key, entry);
    }
  }

  @override
  FutureOr<void> deleteNamespaceAndInsertNewNamespace(
    String topic,
    int requestId,
    Map<String, NamespaceSession> namespaces,
  ) async {
    await box.put(
      requestId.toString().tempNamespacesKey,
      _SessionForStore.tempNamespaces(
        topic: topic,
        requestId: requestId,
        namespaces: namespaces,
      ).toJson(),
    );
  }

  @override
  FutureOr<void> deleteSession(String topic) async {
    final keys = box.values
        .where((e) => e['topic'] == topic)
        .map((e) {
          switch (e['runtimeType']) {
            case 'session':
              return topic.sessionKey;
            case 'tempNamespaces':
              return e['requestId'].toString().tempNamespacesKey;
            default:
              return null;
          }
        })
        .whereNotNull()
        .toSet();
    await box.deleteAll(keys);
  }

  @override
  FutureOr<void> deleteTempNamespacesByRequestId(int requestId) async {
    await box.delete(requestId.toString().tempNamespacesKey);
  }

  @override
  FutureOr<void> extendSession(String topic, Duration expiry) {
    final entry = box.get(topic.sessionKey);
    if (entry != null) {
      final session = _SessionForStore.fromJson(entry.cast()) as _Session;
      return box.put(topic, session.copyWith(expiry: expiry).toJson());
    }
  }

  @override
  FutureOr<List<String>> listSessionTopicsByPairingTopic(
    String pairingTopic,
  ) {
    return box.values
        .where((e) => e['pairingTopic'] == pairingTopic)
        .map((e) => e['topic'].toString())
        .toList(growable: false);
  }

  @override
  FutureOr<List<Session>> listSessions() {
    return box.values
        .where((e) => e['runtimeType'] == 'session')
        .map((e) => Session.fromJson(e.cast()))
        .toList(growable: false);
  }

  @override
  FutureOr<Session> getSessionByTopic(String topic) {
    final json = box.get(topic.sessionKey);
    if (json == null) {
      throw StateError('Session not found: $topic');
    }
    return Session.fromJson(json.cast());
  }

  @override
  FutureOr<Map<String, NamespaceSession>> getTempNamespaces(int requestId) {
    final json = box.get(requestId.toString().tempNamespacesKey);
    if (json == null) {
      throw StateError('TempNamespaces not found: $requestId');
    }
    final tempNamespace =
        _SessionForStore.fromJson(json.cast()) as _TempNamespaces;
    return tempNamespace.namespaces;
  }

  @override
  FutureOr<void> insertSession(
    String pairingTopic,
    int requestId,
    Session session,
  ) async {
    await box.put(
      session.topic.sessionKey,
      session.toSessionForStore(pairingTopic, requestId).toJson(),
    );
  }

  @override
  FutureOr<void> insertTempNamespaces(
    String topic,
    int requestId,
    Map<String, NamespaceSession> namespaces,
  ) async {
    await box.put(
      requestId.toString().tempNamespacesKey,
      _SessionForStore.tempNamespaces(
        topic: topic,
        requestId: requestId,
        isAcknowledged: false,
        namespaces: namespaces,
      ).toJson(),
    );
  }

  @override
  FutureOr<bool> isSessionValid(String topic) async {
    final key = topic.sessionKey;
    final json = box.get(key);
    if (json == null) {
      return false;
    }
    final session = Session.fromJson(json.cast());
    if (session.expiry > currentAtDuration) {
      return true;
    }
    await box.delete(key);
    return false;
  }

  @override
  FutureOr<bool> isUpdatedNamespaceResponseValid(String topic, int timestamp) {
    return isUpdatedNamespaceValid(topic, timestamp);
  }

  @override
  FutureOr<bool> isUpdatedNamespaceValid(String topic, int timestamp) {
    final json = box.get(topic.sessionKey);
    if (json == null) {
      return false;
    }
    final session = _SessionForStore.fromJson(json.cast()) as _Session;
    if (session.isAcknowledged && session.requestId ~/ 1000 >= timestamp) {
      return true;
    }
    return false;
  }

  @override
  FutureOr<void> markUnAckNamespaceAcknowledged(int requestId) async {
    final key = requestId.toString().tempNamespacesKey;
    final find = box.get(key);
    if (find != null) {
      final tn = _SessionForStore.fromJson(find.cast()) as _TempNamespaces;
      await box.put(key, tn.copyWith(isAcknowledged: true).toJson());
    }
  }
}

@freezed
class _SessionForStore with _$_SessionForStore {
  const _SessionForStore._();

  const factory _SessionForStore.session({
    @TopicConverter() required String topic,
    @TopicConverter() required String pairingTopic,
    @ExpiryConverter() required Duration expiry,
    required String relayProtocol,
    required int requestId,
    String? relayData,
    @Uint8ListToHexConverter() PublicKey? controllerKey,
    @Uint8ListToHexConverter() required PublicKey selfPublicKey,
    AppMetaData? selfAppMetaData,
    @Uint8ListToHexConverter() PublicKey? peerPublicKey,
    AppMetaData? peerAppMetaData,
    required Map<String, NamespaceSession> namespaces,
    required Map<String, NamespaceProposal> proposalNamespaces,
    @Default(false) bool isAcknowledged,
  }) = _Session;

  const factory _SessionForStore.tempNamespaces({
    @TopicConverter() required String topic,
    required int requestId,
    @Default(false) bool isAcknowledged,
    required Map<String, NamespaceSession> namespaces,
  }) = _TempNamespaces;

  factory _SessionForStore.fromJson(Map<String, dynamic> json) =>
      _$_SessionForStoreFromJson(json);
}

extension _KeyExtension on String {
  String get sessionKey => 'session:$this';

  String get tempNamespacesKey => 'temp-namespaces:$this';
}

extension _SessionExtension on Session {
  _SessionForStore toSessionForStore(String pairingTopic, int requestId) {
    return _SessionForStore.session(
      topic: topic,
      pairingTopic: pairingTopic,
      requestId: requestId,
      expiry: expiry,
      relayProtocol: relayProtocol,
      relayData: relayData,
      controllerKey: controllerKey,
      selfPublicKey: selfPublicKey,
      selfAppMetaData: selfAppMetaData,
      peerPublicKey: peerPublicKey,
      peerAppMetaData: peerAppMetaData,
      namespaces: namespaces,
      proposalNamespaces: proposalNamespaces,
      isAcknowledged: isAcknowledged,
    );
  }
}
