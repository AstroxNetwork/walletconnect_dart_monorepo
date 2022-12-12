part of 'relay.dart';

//region Publish
@freezed
class RelayPublish with _$RelayPublish implements JsonRpc, Relay {
  @Implements<JsonRpcRequest<RelayPublishRequestParams>>()
  const factory RelayPublish.request({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(irnPublish) String method,
    required RelayPublishRequestParams params,
  }) = RelayPublishRequest;

  @Implements<JsonRpcResult<bool>>()
  const factory RelayPublish.ack({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required bool result,
  }) = RelayPublishAcknowledgement;

  @Implements<JsonRpcError>()
  const factory RelayPublish.error({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required JsonRpcOnError error,
  }) = RelayPublishError;

  const factory RelayPublish.result({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    bool? result,
    JsonRpcOnError? error,
  }) = RelayPublishResult;

  factory RelayPublish.fromJson(Map<String, Object?> json) =>
      _$RelayPublishFromJson(json);
}

extension RelayPublishResultExtension on RelayPublishResult {
  bool get isError => error != null;

  RelayPublish get data => isError
      ? RelayPublish.error(id: id, jsonrpc: jsonrpc, error: error!)
      : RelayPublish.ack(id: id, jsonrpc: jsonrpc, result: result!);
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
//endregion
