import 'dart:async';

import 'package:tuple/tuple.dart';
import 'package:walletconnect_mono_core/core.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

import 'errors.dart';
import 'model/namespace.dart';
import 'model/session.dart';
import 'model/session_proposer.dart';
import 'model/sign_params.dart';
import 'model/sign_rpc.dart';
import 'session_store.dart';

abstract class ISign {
  FutureOr<void> pair(Uri uri, {Duration? timeout});

  FutureOr<void> approve(
    PublicKey proposerPublicKey,
    Map<String, NamespaceSession> namespaces, {
    Duration? timeout,
  });

  FutureOr<void> reject(
    PublicKey proposerPublicKey,
    String reason, {
    Duration? timeout,
  });

  FutureOr<RelayPublishResult> request(
    String topic,
    String method,
    String params,
    String chainId, {
    Duration? timeout,
  });

  FutureOr<RelayPublishResult> respond<T>(
    String topic,
    JsonRpcResponse<T> response, {
    Duration? timeout,
  });

  FutureOr<RelayPublishResult> update(
    String topic,
    Map<String, NamespaceSession> namespaces, {
    Duration? timeout,
  });

  FutureOr<RelayPublishResult> extend(
    String topic, {
    Duration? timeout,
  });

  FutureOr<RelayPublishResult> emit(
    String topic,
    String name,
    String data,
    String chainId, {
    Duration? timeout,
  });

  FutureOr<void> ping(
    String topic, {
    Duration? timeout = const Duration(seconds: 30),
  });

  FutureOr<void> connect(
    Map<String, NamespaceProposal> namespaces,
    Pairing pairing, {
    Duration? timeout,
  });

  FutureOr<void> disconnect(
    String topic, {
    Duration? timeout,
  });

  FutureOr<List<Session>> getListOfSettledSessions();

  FutureOr<List<PairingSettle>> getListOfSettledPairings();
}

class SignClient implements ISign {
  final IJsonRpcInteractor jsonRpcInteractor;
  final IKeyManagement keyManagement;
  final IMetadataStore metadataStore;
  final IPairing pairing;
  final ISessionStore sessionStore;
  final AppMetaData selfAppMetaData;

  const SignClient({
    required this.jsonRpcInteractor,
    required this.keyManagement,
    required this.metadataStore,
    required this.pairing,
    required this.sessionStore,
    required this.selfAppMetaData,
  });

  static late final _sessionProposalRequest = <String, WCRequest>{};

  @override
  FutureOr<void> pair(Uri uri, {Duration? timeout}) {
    return pairing.pair(uri, timeout: timeout);
  }

  @override
  FutureOr<void> reject(
    PublicKey proposerPublicKey,
    String reason, {
    Duration? timeout,
  }) {
    final hex = proposerPublicKey.bytesToHex();
    final request = _sessionProposalRequest[hex];
    if (request == null) {
      throw CannotFindSessionProposalError(
        '${SignErrorMessages.NO_SESSION_PROPOSAL}$hex',
      );
    }
    _sessionProposalRequest.remove(hex);
    return jsonRpcInteractor.respondWithError(
      request: request,
      irnParams: IrnParams(tag: Tags.sessionProposeResponse.id, ttl: minute5),
      error: EIP1193Error.userRejectedRequest(reason).toJsonRpcOnError(),
      timeout: timeout,
    );
  }

  @override
  FutureOr<void> approve(
    PublicKey proposerPublicKey,
    Map<String, NamespaceSession> namespaces, {
    Duration? timeout,
  }) async {
    final hex = proposerPublicKey.bytesToHex();
    final request = _sessionProposalRequest[hex];
    if (request == null) {
      throw CannotFindSessionProposalError(
        '${SignErrorMessages.NO_SESSION_PROPOSAL}$hex',
      );
    }
    _sessionProposalRequest.remove(hex);
    // todo: ValidateSessionNamespace
    final params = request.params as SessionProposeParams;
    final selfPublicKey = await keyManagement.generateKeyPair();
    final topic = await keyManagement.generateTopicFromKeyAgreement(
      selfPublicKey,
      proposerPublicKey,
    );
    final signParams = SignParams.approval(
      relay: params.relays.first,
      responderPublicKey: selfPublicKey,
    );

    Future<void> sessionSettle() async {
      final selfPublicKey =
          await keyManagement.getSelfPublicFromKeyAgreement(topic);
      final selfParticipant = SessionParticipant(
        publicKey: selfPublicKey,
        metadata: selfAppMetaData,
      );
      final sessionExpiry =
          Duration(microseconds: activeSessionAt.microsecondsSinceEpoch);
      final session = Session.unacknowledged(
        sessionTopic: topic,
        proposal: params,
        selfParticipant: selfParticipant,
        expiry: sessionExpiry,
        namespaces: namespaces,
      );
      try {
        await [
          sessionStore.insertSession(topic, request.id, session),
          metadataStore.insertOrAbort(
            topic,
            AppMetaDataType.self,
            selfAppMetaData,
          ),
          metadataStore.insertOrAbort(
            topic,
            AppMetaDataType.peer,
            params.proposer.metadata,
          ),
          jsonRpcInteractor.publishRequest(
            topic: topic,
            params: IrnParams(tag: Tags.sessionSettle.id, ttl: minute5),
            payload: newSessionSettle(
              id: generateId(),
              params: SessionSettleParams(
                relay: params.relays.first,
                controller: selfParticipant,
                namespaces: namespaces,
                expiry: sessionExpiry.inSeconds,
              ),
            ),
            timeout: timeout,
          ),
        ].waitOr();
      } catch (e) {
        sessionStore.deleteSession(topic);
      }
    }

    await jsonRpcInteractor.subscribe(topic, timeout: timeout);
    await jsonRpcInteractor.respondWithParams(
      request: request,
      clientParams: signParams,
      irnParams: IrnParams(tag: Tags.sessionProposeResponse.id, ttl: minute5),
      timeout: timeout,
    );
    await sessionSettle();
  }

  @override
  Future<RelayPublishResult> request(
    String topic,
    String method,
    String params,
    String chainId, {
    Duration? timeout,
  }) async {
    if (!(await sessionStore.isSessionValid(topic))) {
      throw CannotFindSequenceForTopicError(
        '${SignErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    // todo: validate_session_request
    // final session = await sessionStore.getSessionWithoutMetadataByTopic(topic);
    // todo: validate_chain_id_with_method_authorisation
    return jsonRpcInteractor.publishRequest(
      topic: topic,
      params: IrnParams(tag: Tags.sessionRequest.id, ttl: minute5),
      payload: newSessionRequest(
        id: generateId(),
        params: SessionRequestParams(
          request: SessionRequestPayload(method: method, params: params),
          chainId: chainId,
        ),
      ),
      timeout: timeout,
    );
  }

  @override
  Future<RelayPublishResult> respond<T>(
    String topic,
    JsonRpcResponse<T> response, {
    Duration? timeout,
  }) async {
    if (!(await sessionStore.isSessionValid(topic))) {
      throw CannotFindSequenceForTopicError(
        '${SignErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    return jsonRpcInteractor.publishResponse(
      topic: topic,
      params: IrnParams(tag: Tags.sessionRequestResponse.id, ttl: minute5),
      response: response,
      timeout: timeout,
    );
  }

  @override
  FutureOr<RelayPublishResult> update(
    String topic,
    Map<String, NamespaceSession> namespaces, {
    Duration? timeout,
  }) async {
    if (!(await sessionStore.isSessionValid(topic))) {
      throw CannotFindSequenceForTopicError(
        '${SignErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    final session = await sessionStore.getSessionByTopic(topic);
    if (!session.isSelfController) {
      throw UnauthorizedPeerError(
        SignErrorMessages.UNAUTHORIZED_UPDATE_MESSAGE,
      );
    }
    if (!session.isAcknowledged) {
      throw NotSettledSessionException(
        '${SignErrorMessages.SESSION_IS_NOT_ACKNOWLEDGED_MESSAGE}$topic',
      );
    }
    // todo: validate_session_namespace
    final request = newSessionUpdate(
      id: generateId(),
      params: UpdateNamespacesParams(namespaces: namespaces),
    );
    await sessionStore.insertTempNamespaces(topic, request.id, namespaces);
    try {
      return await jsonRpcInteractor.publishRequest(
        topic: topic,
        params: IrnParams(tag: Tags.sessionUpdate.id, ttl: day1),
        payload: request,
        timeout: timeout,
      );
    } catch (e) {
      await sessionStore.deleteTempNamespacesByRequestId(request.id);
      rethrow;
    }
  }

  @override
  FutureOr<RelayPublishResult> extend(String topic, {Duration? timeout}) async {
    if (!(await sessionStore.isSessionValid(topic))) {
      throw CannotFindSequenceForTopicError(
        '${SignErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    final session = await sessionStore.getSessionByTopic(topic);
    if (!session.isSelfController) {
      throw UnauthorizedPeerError(
        SignErrorMessages.UNAUTHORIZED_UPDATE_MESSAGE,
      );
    }
    if (!session.isAcknowledged) {
      throw NotSettledSessionException(
        '${SignErrorMessages.SESSION_IS_NOT_ACKNOWLEDGED_MESSAGE}$topic',
      );
    }
    final newExpiry = session.expiry + day7;
    await sessionStore.extendSession(topic, newExpiry);
    return jsonRpcInteractor.publishRequest(
      topic: topic,
      params: IrnParams(tag: Tags.sessionExtend.id, ttl: day1),
      payload: newSessionExtend(
        id: generateId(),
        params: ExtendParams(
          expiry: newExpiry.inSeconds,
        ),
      ),
      timeout: timeout,
    );
  }

  @override
  FutureOr<RelayPublishResult> emit(
    String topic,
    String name,
    String data,
    String chainId, {
    Duration? timeout,
  }) async {
    if (!(await sessionStore.isSessionValid(topic))) {
      throw CannotFindSequenceForTopicError(
        '${SignErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    final session = await sessionStore.getSessionByTopic(topic);
    if (!session.isSelfController) {
      throw UnauthorizedPeerError(
        SignErrorMessages.UNAUTHORIZED_UPDATE_MESSAGE,
      );
    }
    // todo: validate_event
    // todo: validate_chain_id_with_event_authorisation
    return jsonRpcInteractor.publishRequest(
      topic: topic,
      params: IrnParams(tag: Tags.sessionEvent.id, ttl: minute5),
      payload: newSessionEvent(
        id: generateId(),
        params: EventParams(
          event: SessionEventPayload(
            name: name,
            data: data,
          ),
          chainId: chainId,
        ),
      ),
      timeout: timeout,
    );
  }

  @override
  Future<RelayPublishResult> ping(
    String topic, {
    Duration? timeout = const Duration(seconds: 30),
  }) async {
    if (await sessionStore.isSessionValid(topic)) {
      return jsonRpcInteractor.publishRequest(
        topic: topic,
        params: IrnParams(tag: Tags.sessionPing.id, ttl: second30),
        payload: newSessionPing(id: generateId()),
      );
    } else {
      return pairing.ping(topic, timeout: timeout);
    }
  }

  @override
  FutureOr<void> disconnect(String topic, {Duration? timeout}) async {
    if (!(await sessionStore.isSessionValid(topic))) {
      throw CannotFindSequenceForTopicError(
        '${SignErrorMessages.NO_SEQUENCE_FOR_TOPIC_MESSAGE}$topic',
      );
    }
    final reason = Reason.userDisconnected();
    await [
      sessionStore.deleteSession(topic),
      jsonRpcInteractor.unsubscribe(topic, timeout: timeout),
      jsonRpcInteractor.publishRequest(
        topic: topic,
        params: IrnParams(tag: Tags.sessionDelete.id, ttl: day1),
        payload: newSessionDelete(
          id: generateId(),
          params: DeleteParams(
            code: reason.code,
            message: reason.message!,
          ),
        ),
      ),
    ].waitOr();
  }

  @override
  FutureOr<void> connect(
    Map<String, NamespaceProposal> namespaces,
    Pairing pairing, {
    Duration? timeout,
  }) async {
    // todo: validate_proposal_namespace
    final selfPublicKey = await keyManagement.generateKeyPair();
    final sessionProposeParams = SessionProposeParams(
      relays: [
        RelayProtocolOptions(
          protocol: pairing.relayProtocol,
          data: pairing.relayData,
        )
      ],
      proposer: SessionProposer(
        publicKey: selfPublicKey,
        metadata: selfAppMetaData,
      ),
      namespaces: namespaces,
    );
    final request = newSessionPropose(
      id: generateId(),
      params: sessionProposeParams,
    );
    _sessionProposalRequest[selfPublicKey.bytesToHex()] = WCRequest(
      topic: pairing.topic,
      id: request.id,
      method: request.method,
      params: sessionProposeParams,
    );
    await [
      jsonRpcInteractor.subscribe(pairing.topic, timeout: timeout),
      jsonRpcInteractor.publishRequest(
        topic: pairing.topic,
        params: IrnParams(tag: Tags.sessionPropose.id, ttl: minute5),
        payload: request,
      ),
    ].waitOr();
  }

  @override
  FutureOr<List<PairingSettle>> getListOfSettledPairings() async {
    final list = await pairing.pairings();
    return list
        .map((e) => PairingSettle(e.topic, e.peerAppMetaData))
        .toList(growable: false);
  }

  @override
  FutureOr<List<Session>> getListOfSettledSessions() async {
    final list = await sessionStore.listSessions();
    return list
        .where((e) => e.isAcknowledged && e.expiry > currentAtDuration)
        .map((e) async {
      final metadata = await metadataStore.get(e.topic, AppMetaDataType.peer);
      return e.copyWith(
        selfAppMetaData: selfAppMetaData,
        peerAppMetaData: metadata,
      );
    }).waitOr();
  }
}

typedef PairingSettle = Tuple2<String, AppMetaData?>;

extension PairingSettleExtension on PairingSettle {
  String get topic => item1;

  AppMetaData? get metadata => item2;
}
