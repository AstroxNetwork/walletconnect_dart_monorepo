import 'dart:async';

import 'package:hive/hive.dart';
import 'package:walletconnect_mono_sign/sign.dart';

class HiveSessionStore implements ISessionStore {
  final Box<Map> box;

  const HiveSessionStore(this.box);

  @override
  FutureOr<void> acknowledgeSession(String topic) {
    // TODO: implement acknowledgeSession
    throw UnimplementedError();
  }

  @override
  FutureOr<void> deleteNamespaceAndInsertNewNamespace(String topic, int requestId, Map<String, NamespaceSession> namespaces) {
    // TODO: implement deleteNamespaceAndInsertNewNamespace
    throw UnimplementedError();
  }

  @override
  FutureOr<void> deleteSession(String topic) {
    // TODO: implement deleteSession
    throw UnimplementedError();
  }

  @override
  FutureOr<void> deleteTempNamespacesByRequestId(int requestId) {
    // TODO: implement deleteTempNamespacesByRequestId
    throw UnimplementedError();
  }

  @override
  FutureOr<void> extendSession(String topic, Duration expiry) {
    // TODO: implement extendSession
    throw UnimplementedError();
  }

  @override
  FutureOr<List<String>> getAllSessionTopicsByPairingTopic(String pairingTopic) {
    // TODO: implement getAllSessionTopicsByPairingTopic
    throw UnimplementedError();
  }

  @override
  FutureOr<List<Session>> getListOfSessionsWithoutMetadata() {
    // TODO: implement getListOfSessionsWithoutMetadata
    throw UnimplementedError();
  }

  @override
  FutureOr<Session> getSessionWithoutMetadataByTopic(String topic) {
    // TODO: implement getSessionWithoutMetadataByTopic
    throw UnimplementedError();
  }

  @override
  FutureOr<Map<String, NamespaceSession>> getTempNamespaces(int requestId) {
    // TODO: implement getTempNamespaces
    throw UnimplementedError();
  }

  @override
  FutureOr<Session> insertSession(String pairingTopic, int requestId, Session session) {
    // TODO: implement insertSession
    throw UnimplementedError();
  }

  @override
  FutureOr<void> insertTempNamespaces(String topic, int requestId, Map<String, NamespaceSession> namespaces) {
    // TODO: implement insertTempNamespaces
    throw UnimplementedError();
  }

  @override
  FutureOr<bool> isSessionValid(String topic) {
    // TODO: implement isSessionValid
    throw UnimplementedError();
  }

  @override
  FutureOr<bool> isUpdatedNamespaceResponseValid(String topic, int timestamp) {
    // TODO: implement isUpdatedNamespaceResponseValid
    throw UnimplementedError();
  }

  @override
  FutureOr<bool> isUpdatedNamespaceValid(String topic, int timestamp) {
    // TODO: implement isUpdatedNamespaceValid
    throw UnimplementedError();
  }

  @override
  FutureOr<void> markUnAckNamespaceAcknowledged(int requestId) {
    // TODO: implement markUnAckNamespaceAcknowledged
    throw UnimplementedError();
  }

}
