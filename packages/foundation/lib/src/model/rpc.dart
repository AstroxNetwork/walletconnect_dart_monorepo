import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import '../errors.dart';
import '../snippets.dart';

part 'rpc.freezed.dart';

part 'rpc.g.dart';

abstract class JsonRpc {
  final int id;
  final String jsonrpc;

  const JsonRpc(this.id, this.jsonrpc);
}

@Freezed(genericArgumentFactories: true)
class JsonRpcRequest<T> with _$JsonRpcRequest<T> implements JsonRpc {
  const factory JsonRpcRequest({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required String method,
    required T params,
  }) = _JsonRpcRequest;

  factory JsonRpcRequest.fromJson(
    Map<String, dynamic> json,
    ObjectFactory<T> factory,
  ) =>
      _$JsonRpcRequestFromJson(json, factory);
}

@Freezed(genericArgumentFactories: true)
class JsonRpcResponse<T> with _$JsonRpcResponse<T> implements JsonRpc {
  const factory JsonRpcResponse.result({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required T result,
  }) = JsonRpcResult<T>;

  const factory JsonRpcResponse.error({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    required JsonRpcOnError error,
  }) = JsonRpcError<T>;

  factory JsonRpcResponse.fromJson(
    Map<String, dynamic> json,
    ObjectFactory<T> factory,
  ) =>
      _$JsonRpcResponseFromJson(
        json..['runtimeType'] = json.containsKey('result') ? 'result' : 'error',
        factory,
      );
}

@freezed
class JsonRpcOnError extends RemoteJsonRpcError with _$JsonRpcOnError {
  const factory JsonRpcOnError({
    required int code,
    required String message,
  }) = _JsonRpcOnError;

  factory JsonRpcOnError.fromJson(Map<String, Object?> json) =>
      _$JsonRpcOnErrorFromJson(json);

  RemoteJsonRpcError toError() {
    return RemoteJsonRpcError(code, message);
  }

  Never throwError() {
    throw RemoteJsonRpcError(code, message);
  }
}
