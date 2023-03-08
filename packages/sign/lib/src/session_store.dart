import 'dart:async';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_core/core.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

import 'model/namespace.dart';
import 'model/session.dart';

part 'session_store.freezed.dart';
part 'session_store.g.dart';

abstract class ISessionStore {
  FutureOr<List<Session>> listSessions();

  FutureOr<bool> isSessionValid(String topic);

  FutureOr<Session> getSessionByTopic(String topic);

  FutureOr<List<String>> listSessionTopicsByPairingTopic(String pairingTopic);

  FutureOr<void> insertSession(
    String pairingTopic,
    int requestId,
    Session session,
  );

  FutureOr<void> acknowledgeSession(String topic);

  FutureOr<void> extendSession(String topic, Duration expiry);

  FutureOr<void> insertTempNamespaces(
    String topic,
    int requestId,
    Map<String, NamespaceSession> namespaces,
  );

  FutureOr<Map<String, NamespaceSession>> getTempNamespaces(int requestId);

  FutureOr<void> deleteNamespaceAndInsertNewNamespace(
    String topic,
    int requestId,
    Map<String, NamespaceSession> namespaces,
  );

  FutureOr<bool> isUpdatedNamespaceValid(String topic, int timestamp);

  FutureOr<bool> isUpdatedNamespaceResponseValid(String topic, int timestamp);

  FutureOr<void> markUnAckNamespaceAcknowledged(int requestId);

  FutureOr<void> deleteTempNamespacesByRequestId(int requestId);

  FutureOr<void> deleteSession(String topic);
}

class MemSessionStore extends ISessionStore {
  late final _store = <String, Map>{};

  @override
  FutureOr<void> acknowledgeSession(String topic) {
    final key = topic.sessionKey;
    final entry = _store[key];
    if (entry != null) {
      entry['isAcknowledged'] = true;
      _store[key] = entry;
    }
  }

  @override
  FutureOr<void> deleteNamespaceAndInsertNewNamespace(
    String topic,
    int requestId,
    Map<String, NamespaceSession> namespaces,
  ) {
    _store[requestId.toString().tempNamespacesKey] =
        SessionForStore.tempNamespaces(
      topic: topic,
      requestId: requestId,
      namespaces: namespaces,
    ).toJson();
  }

  @override
  FutureOr<void> deleteSession(String topic) {
    _store.values
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
        .toSet()
        .forEach(_store.remove);
  }

  @override
  FutureOr<void> deleteTempNamespacesByRequestId(int requestId) {
    _store.remove(requestId.toString().tempNamespacesKey);
  }

  @override
  FutureOr<void> extendSession(String topic, Duration expiry) {
    final entry = _store[topic.sessionKey];
    if (entry != null) {
      final session = SessionForStore.fromJson(entry.cast()) as _Session;
      _store[topic] = session.copyWith(expiry: expiry).toJson();
    }
  }

  @override
  FutureOr<List<String>> listSessionTopicsByPairingTopic(
    String pairingTopic,
  ) {
    return _store.values
        .where((e) => e['pairingTopic'] == pairingTopic)
        .map((e) => e['topic'].toString())
        .toList(growable: false);
  }

  @override
  FutureOr<List<Session>> listSessions() {
    return _store.values
        .where((e) => e['runtimeType'] == 'session')
        .map((e) => Session.fromJson(e.cast()))
        .toList(growable: false);
  }

  @override
  FutureOr<Session> getSessionByTopic(String topic) {
    final json = _store[topic.sessionKey];
    if (json == null) {
      throw StateError('Session not found: $topic');
    }
    return Session.fromJson(json.cast());
  }

  @override
  FutureOr<Map<String, NamespaceSession>> getTempNamespaces(int requestId) {
    final json = _store[requestId.toString().tempNamespacesKey];
    if (json == null) {
      throw StateError('TempNamespaces not found: $requestId');
    }
    final tempNamespace =
        SessionForStore.fromJson(json.cast()) as _TempNamespaces;
    return tempNamespace.namespaces;
  }

  @override
  FutureOr<void> insertSession(
    String pairingTopic,
    int requestId,
    Session session,
  ) {
    _store[session.topic.sessionKey] =
        session.toSessionForStore(pairingTopic, requestId).toJson();
  }

  @override
  FutureOr<void> insertTempNamespaces(
    String topic,
    int requestId,
    Map<String, NamespaceSession> namespaces,
  ) {
    _store[requestId.toString().tempNamespacesKey] =
        SessionForStore.tempNamespaces(
      topic: topic,
      requestId: requestId,
      isAcknowledged: false,
      namespaces: namespaces,
    ).toJson();
  }

  @override
  FutureOr<bool> isSessionValid(String topic) async {
    final key = topic.sessionKey;
    final json = _store[key];
    if (json == null) {
      return false;
    }
    final session = Session.fromJson(json.cast());
    if (session.expiry > currentAtDuration) {
      return true;
    }
    _store.remove(key);
    return false;
  }

  @override
  FutureOr<bool> isUpdatedNamespaceResponseValid(String topic, int timestamp) {
    return isUpdatedNamespaceValid(topic, timestamp);
  }

  @override
  FutureOr<bool> isUpdatedNamespaceValid(String topic, int timestamp) {
    final json = _store[topic.sessionKey];
    if (json == null) {
      return false;
    }
    final session = SessionForStore.fromJson(json.cast()) as _Session;
    if (session.isAcknowledged && session.requestId ~/ 1000 >= timestamp) {
      return true;
    }
    return false;
  }

  @override
  FutureOr<void> markUnAckNamespaceAcknowledged(int requestId) async {
    final key = requestId.toString().tempNamespacesKey;
    final find = _store[key];
    if (find != null) {
      final tn = SessionForStore.fromJson(find.cast()) as _TempNamespaces;
      _store[key] = tn.copyWith(isAcknowledged: true).toJson();
    }
  }
}

@freezed
class SessionForStore with _$SessionForStore {
  const SessionForStore._();

  const factory SessionForStore.session({
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

  const factory SessionForStore.tempNamespaces({
    @TopicConverter() required String topic,
    required int requestId,
    @Default(false) bool isAcknowledged,
    required Map<String, NamespaceSession> namespaces,
  }) = _TempNamespaces;

  factory SessionForStore.fromJson(Map<String, dynamic> json) =>
      _$SessionForStoreFromJson(json);
}

extension SessionKeyExtension on String {
  String get sessionKey => 'session:$this';

  String get tempNamespacesKey => 'temp-namespaces:$this';
}

extension SessionExtensionForStore on Session {
  SessionForStore toSessionForStore(String pairingTopic, int requestId) {
    return SessionForStore.session(
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
