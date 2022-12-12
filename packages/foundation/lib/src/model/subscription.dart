part of 'relay.dart';

//region Subscription

@freezed
class RelaySubscription with _$RelaySubscription implements JsonRpc, Relay {
  @Implements<JsonRpcRequest<RelaySubscriptionRequestParams>>()
  const factory RelaySubscription.request({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(irnSubscription) String method,
    required RelaySubscriptionRequestParams params,
  }) = RelaySubscriptionRequest;

  @Implements<JsonRpcResult<bool>>()
  const factory RelaySubscription.ack({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required bool result,
  }) = RelaySubscriptionAcknowledgement;

  @Implements<JsonRpcError>()
  const factory RelaySubscription.error({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required JsonRpcOnError error,
  }) = RelaySubscriptionError;

  const factory RelaySubscription.result({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    bool? result,
    JsonRpcOnError? error,
  }) = RelaySubscriptionResult;

  factory RelaySubscription.fromJson(Map<String, Object?> json) =>
      _$RelaySubscriptionFromJson(json);
}

extension RelaySubscriptionRequestExtension on RelaySubscriptionRequest {
  String get subscriptionTopic => params.subscriptionData.topic;

  String get message => params.subscriptionData.message;
}

extension RelaySubscriptionResultExtension on RelaySubscriptionResult {
  bool get isError => error != null;

  RelaySubscription get inst => isError
      ? RelaySubscription.error(id: id, jsonrpc: jsonrpc, error: error!)
      : RelaySubscription.ack(id: id, jsonrpc: jsonrpc, result: result!);
}

@freezed
class RelaySubscriptionRequestParams with _$RelaySubscriptionRequestParams {
  const factory RelaySubscriptionRequestParams({
    @SubscriptionIdConverter() required String subscriptionId,
    required RelaySubscriptionRequestParamsData subscriptionData,
  }) = _RelaySubscriptionRequestParams;

  factory RelaySubscriptionRequestParams.fromJson(Map<String, Object?> json) =>
      _$RelaySubscriptionRequestParamsFromJson(json);
}

@freezed
class RelaySubscriptionRequestParamsData
    with _$RelaySubscriptionRequestParamsData {
  const factory RelaySubscriptionRequestParamsData({
    @TopicConverter() required String topic,
    required String message,
  }) = _RelaySubscriptionRequestParamsData;

  factory RelaySubscriptionRequestParamsData.fromJson(
    Map<String, Object?> json,
  ) =>
      _$RelaySubscriptionRequestParamsDataFromJson(json);
}

//endregion
