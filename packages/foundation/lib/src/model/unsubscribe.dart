part of 'relay.dart';

//region Unsubscribe

@freezed
class RelayUnsubscribe with _$RelayUnsubscribe implements JsonRpc, Relay {
  @Implements<JsonRpcRequest<RelayUnsubscribeRequestParams>>()
  const factory RelayUnsubscribe.request({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(irnUnsubscribe) String method,
    required RelayUnsubscribeRequestParams params,
  }) = RelayUnsubscribeRequest;

  @Implements<JsonRpcResult<bool>>()
  const factory RelayUnsubscribe.ack({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required bool result,
  }) = RelayUnsubscribeAcknowledgement;

  @Implements<JsonRpcError>()
  const factory RelayUnsubscribe.error({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required JsonRpcOnError error,
  }) = RelayUnsubscribeError;

  const factory RelayUnsubscribe.result({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    bool? result,
    JsonRpcOnError? error,
  }) = RelayUnsubscribeResult;

  factory RelayUnsubscribe.fromJson(Map<String, Object?> json) =>
      _$RelayUnsubscribeFromJson(json);
}

extension RelayUnsubscribeResultExtension on RelayUnsubscribeResult {
  bool get isError => error != null;

  RelayUnsubscribe get data => isError
      ? RelayUnsubscribe.error(id: id, jsonrpc: jsonrpc, error: error!)
      : RelayUnsubscribe.ack(id: id, jsonrpc: jsonrpc, result: result!);
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
//endregion
