import 'dart:async';

import 'model/namespace.dart';
import 'model/session.dart';

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
