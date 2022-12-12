part of 'relay.dart';

typedef RelaySubscriptionRequest = JsonRpcRequest<RelaySubscriptionRequestParams>;
typedef RelaySubscriptionResult = JsonRpcResponse<bool>;
typedef RelaySubscriptionAcknowledgement = JsonRpcResult<bool>;
typedef RelaySubscriptionError = JsonRpcError;


RelaySubscriptionRequest newRelaySubscriptionRequest({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = irnSubscription,
  required RelaySubscriptionRequestParams params,
}) {
  return RelaySubscriptionRequest(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}


extension RelaySubscriptionRequestExtension on RelaySubscriptionRequest {
  String get subscriptionTopic => params.subscriptionData.topic;

  String get message => params.subscriptionData.message;
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
