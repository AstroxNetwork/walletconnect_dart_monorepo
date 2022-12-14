import 'package:walletconnect_mono_auth/src/rpc_method.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

import 'auth_params.dart';

typedef AuthRpc = JsonRpcRequest<AuthParams>;

AuthRpc newRelaySubscribeRequest({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcAuthRequest,
  required AuthRequestParams params,
}) {
  return AuthRpc(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}
