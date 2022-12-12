part of 'relay.dart';

//region Subscribe
abstract class RelaySubscribe implements JsonRpc, Relay {}

@freezed
class RelaySubscribeRequest
    with _$RelaySubscribeRequest
    implements RelaySubscribe, JsonRpcRequest<RelaySubscribeRequestParams> {
  const RelaySubscribeRequest._();

  const factory RelaySubscribeRequest({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(irnSubscribe) String method,
    required RelaySubscribeRequestParams params,
  }) = _RelaySubscribeRequest;

  factory RelaySubscribeRequest.fromJson(Map<String, dynamic> json) =>
      _$RelaySubscribeRequestFromJson(json);
}

@freezed
class RelaySubscribeResult
    with _$RelaySubscribeResult
    implements RelaySubscribe {
  @Implements<JsonRpcResponse<String>>()
  const factory RelaySubscribeResult({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    String? result,
    JsonRpcOnError? error,
  }) = _RelaySubscribeResult;

  @Implements<JsonRpcResult<String>>()
  const factory RelaySubscribeResult.ack({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @SubscriptionIdConverter() required String result,
  }) = RelaySubscribeResultAcknowledgement;

  @Implements<JsonRpcError>()
  const factory RelaySubscribeResult.error({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required JsonRpcOnError error,
  }) = RelaySubscribeResultError;

  factory RelaySubscribeResult.fromJson(Map<String, dynamic> json) =>
      _$RelaySubscribeResultFromJson(json);

}

@freezed
class RelaySubscribeRequestParams with _$RelaySubscribeRequestParams {
  const factory RelaySubscribeRequestParams({
    @TopicConverter() required String topic,
  }) = _RelaySubscribeRequestParams;

  factory RelaySubscribeRequestParams.fromJson(Map<String, Object?> json) =>
      _$RelaySubscribeRequestParamsFromJson(json);
}
//endregion
