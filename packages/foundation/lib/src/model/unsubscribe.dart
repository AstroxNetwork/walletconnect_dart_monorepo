part of 'relay.dart';

typedef RelayUnsubscribeRequest = JsonRpcRequest<RelayUnsubscribeRequestParams>;
typedef RelayUnsubscribeResult = JsonRpcResponse<bool>;
typedef RelayUnsubscribeResultAcknowledgement = JsonRpcResult<bool>;
typedef RelayUnsubscribeResultError = JsonRpcError;

RelayUnsubscribeRequest newRelayUnsubscribeRequest({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = irnSubscription,
  required RelayUnsubscribeRequestParams params,
}) {
  return RelayUnsubscribeRequest(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}

@freezed
class RelayUnsubscribeRequestParams with _$RelayUnsubscribeRequestParams {
  const factory RelayUnsubscribeRequestParams({
    @TopicConverter() required String topic,
    @SubscriptionIdConverter() required String subscriptionId,
  }) = _RelayUnsubscribeRequestParams;

  factory RelayUnsubscribeRequestParams.fromJson(Map<String, Object?> json) =>
      _$RelayUnsubscribeRequestParamsFromJson(json);
}
