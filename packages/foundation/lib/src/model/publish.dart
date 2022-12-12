part of 'relay.dart';

typedef RelayPublishRequest = JsonRpcRequest<RelayPublishRequestParams>;
typedef RelayPublishResult = JsonRpcResponse<bool>;
typedef RelayPublishResultAcknowledgement = JsonRpcResult<bool>;
typedef RelayPublishResultError = JsonRpcError;

RelayPublishRequest newRelayPublishRequest({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = irnPublish,
  required RelayPublishRequestParams params,
}) {
  return RelayPublishRequest(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}

@freezed
class RelayPublishRequestParams with _$RelayPublishRequestParams {
  const factory RelayPublishRequestParams({
    @TopicConverter() required String topic,
    required String message,
    @TtlConverter() required Duration ttl,
    required int tag,
    bool? prompt,
  }) = _RelayPublishRequestParams;

  factory RelayPublishRequestParams.fromJson(Map<String, Object?> json) =>
      _$RelayPublishRequestParamsFromJson(json);
}
