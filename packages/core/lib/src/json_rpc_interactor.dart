import 'dart:async';

import 'package:walletconnect_mono_foundation/foundation.dart';

import 'codec.dart';
import 'envelope_type.dart';
import 'model/client_params.dart';
import 'model/json_rpc_record.dart';
import 'model/participants.dart';
import 'model/wc.dart';
import 'record_store.dart';

abstract class IJsonRpcInteractor {
  const IJsonRpcInteractor();

  FutureOr<bool> isAvailable();

  FutureOr<void> checkAvailable() async {
    final ok = await isAvailable();
    if (!ok) {
      throw NoRelayConnectionError('No connection available');
    }
  }

  FutureOr<void> subscribe(
    String topic, {
    Duration? timeout,
  });

  FutureOr<void> unsubscribe(
    String topic, {
    Duration? timeout,
  });

  Future<RelayPublishResult> publishRequest<T>({
    required String topic,
    required IrnParams params,
    required JsonRpcRequest<T> payload,
    Participants? participants,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Duration? timeout,
  });

  Future<RelayPublishResult> publishResponse({
    required String topic,
    required IrnParams params,
    required JsonRpcResponse response,
    Participants? participants,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Duration? timeout,
  });

  FutureOr<RelayPublishResult> respondWithParams({
    required WCRequest request,
    required ClientParams clientParams,
    required IrnParams irnParams,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Duration? timeout,
  });

  FutureOr<RelayPublishResult> respondWithSuccess({
    required WCRequest request,
    required IrnParams irnParams,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Participants? participants,
    Duration? timeout,
  });

  FutureOr<void> respondWithError({
    required WCRequest request,
    required IrnParams irnParams,
    required JsonRpcOnError error,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Participants? participants,
    Duration? timeout,
  });
}

class JsonRpcInteractor extends IJsonRpcInteractor {
  final IRelayConnection relay;
  final IWCCodec codec;
  final IJsonRpcRecordStore jsonRpcRecordStore;

  late final _subscriptions = <String, String>{};

  JsonRpcInteractor(this.relay, this.codec, this.jsonRpcRecordStore) {
    relay.on((value) {
      value.when(
        data: (data) {},
        error: (e, s) {},
      );
    });
  }

  @override
  FutureOr<bool> isAvailable() {
    return relay.isAvailable();
  }

  @override
  Future<RelayPublishResult> publishRequest<T>({
    required String topic,
    required IrnParams params,
    required JsonRpcRequest<T> payload,
    Participants? participants,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Duration? timeout,
  }) async {
    await checkAvailable();
    final json = payload.toJsonString();
    await jsonRpcRecordStore.add(
      JsonRpcRecord(
        id: payload.id,
        topic: topic,
        method: payload.method,
        body: json,
      ),
    );
    final enc = await codec.encrypt(
      topic,
      json,
      envelopeType,
      participants: participants,
    );
    return relay.publish(topic, enc, params, timeout: timeout);
  }

  @override
  Future<RelayPublishResult> publishResponse({
    required String topic,
    required IrnParams params,
    required JsonRpcResponse response,
    Participants? participants,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Duration? timeout,
  }) async {
    await checkAvailable();
    final json = response.toJsonString();
    final enc = await codec.encrypt(topic, json, envelopeType);
    final result = await relay.publish(topic, enc, params, timeout: timeout);
    await jsonRpcRecordStore.update(response.id, json);
    return result;
  }

  @override
  FutureOr<RelayPublishResult> respondWithParams({
    required WCRequest<ClientParams> request,
    required ClientParams clientParams,
    required IrnParams irnParams,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Participants? participants,
    Duration? timeout,
  }) {
    final result = JsonRpcResult(id: request.id, result: clientParams);
    return publishResponse(
      topic: request.topic,
      params: irnParams,
      response: result,
      envelopeType: envelopeType,
      participants: participants,
    );
  }

  @override
  FutureOr<RelayPublishResult> respondWithSuccess({
    required WCRequest<ClientParams> request,
    required IrnParams irnParams,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Participants? participants,
    Duration? timeout,
  }) {
    final result = JsonRpcResult(id: request.id, result: true);
    return publishResponse(
      topic: request.topic,
      params: irnParams,
      response: result,
      envelopeType: envelopeType,
      participants: participants,
    );
  }

  @override
  FutureOr<RelayPublishResult> respondWithError({
    required WCRequest<ClientParams> request,
    required IrnParams irnParams,
    required JsonRpcOnError error,
    EnvelopeType envelopeType = EnvelopeType.zero,
    Participants? participants,
    Duration? timeout,
  }) {
    final result = JsonRpcError(id: request.id, error: error);
    return publishResponse(
      topic: request.topic,
      params: irnParams,
      response: result,
      envelopeType: envelopeType,
      participants: participants,
    );
  }

  @override
  Future<RelaySubscribeResult> subscribe(
    String topic, {
    Duration? timeout,
  }) async {
    await checkAvailable();
    final result = await relay.subscribe(topic, timeout: timeout);
    // _subscriptions[topic] = result.
    return result;
  }

  @override
  Future<RelayUnsubscribeResult> unsubscribe(
    String topic, {
    Duration? timeout,
  }) async {
    await checkAvailable();
    return relay.unsubscribe(topic,"", timeout: timeout);
  }
}
