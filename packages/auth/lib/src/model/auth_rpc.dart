import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_auth/src/rpc_method.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

import 'auth_params.dart';

part 'auth_rpc.freezed.dart';

part 'auth_rpc.g.dart';

@freezed
class AuthRpc extends JsonRpcRequest<AuthParams> with _$AuthRpc {
  const factory AuthRpc.request({
    required int id,
    @Default(jsonRpcVersion) String jsonrpc,
    @Default(JsonRpcMethod.wcAuthRequest) String method,
    required AuthRequestParams params,
  }) = AuthRpcRequest;

  factory AuthRpc.fromJson(Map<String, dynamic> json) =>
      _$AuthRpcFromJson(json);
}
