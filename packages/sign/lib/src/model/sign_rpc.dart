import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

import '../rpc_method.dart';
import 'sign_params.dart';

part 'sign_rpc.freezed.dart';

part 'sign_rpc.g.dart';

@freezed
class SignRpc extends JsonRpcRequest<SignParams> with _$SignRpc {
  const factory SignRpc.sessionPropose({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(JsonRpcMethod.wcSessionPropose) String method,
    required SessionProposeParams params,
  }) = SessionPropose;

  const factory SignRpc.sessionSettle({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(JsonRpcMethod.wcSessionSettle) String method,
    required SessionSettleParams params,
  }) = SessionSettle;

  const factory SignRpc.sessionRequest({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(JsonRpcMethod.wcSessionRequest) String method,
    required SessionRequestParams params,
  }) = SessionRequest;

  const factory SignRpc.sessionDelete({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(JsonRpcMethod.wcSessionDelete) String method,
    required DeleteParams params,
  }) = SessionDelete;

  const factory SignRpc.sessionPing({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(JsonRpcMethod.wcSessionPing) String method,
    required PingParams params,
  }) = SessionPing;

  const factory SignRpc.sessionEvent({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(JsonRpcMethod.wcSessionEvent) String method,
    required EventParams params,
  }) = SessionEvent;

  const factory SignRpc.sessionUpdate({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(JsonRpcMethod.wcSessionUpdate) String method,
    required UpdateNamespacesParams params,
  }) = SessionUpdate;

  const factory SignRpc.sessionExtend({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(JsonRpcMethod.wcSessionExtend) String method,
    required ExtendParams params,
  }) = SessionExtend;

  factory SignRpc.fromJson(Map<String, dynamic> json) =>
      _$SignRpcFromJson(json);
}
