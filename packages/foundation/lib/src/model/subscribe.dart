part of 'relay.dart';

typedef RelaySubscribeRequest = JsonRpcRequest<RelaySubscribeRequestParams>;
typedef RelaySubscribeResult = JsonRpcResponse<String>;
typedef RelaySubscribeResultAcknowledgement = JsonRpcResult<String>;
typedef RelaySubscribeResultError = JsonRpcError;

RelaySubscribeRequest newRelaySubscribeRequest({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = irnSubscribe,
  required RelaySubscribeRequestParams params,
}) {
  return RelaySubscribeRequest(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}

@freezed
class RelaySubscribeRequestParams with _$RelaySubscribeRequestParams {
  const factory RelaySubscribeRequestParams({
    @TopicConverter() required String topic,
  }) = _RelaySubscribeRequestParams;

  factory RelaySubscribeRequestParams.fromJson(Map<String, Object?> json) =>
      _$RelaySubscribeRequestParamsFromJson(json);
}
