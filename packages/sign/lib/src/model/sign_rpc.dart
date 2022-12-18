import 'package:walletconnect_mono_foundation/foundation.dart';

import '../rpc_method.dart';
import 'sign_params.dart';

typedef SignRpc = JsonRpcRequest<SignParams>;

//region SessionPropose
typedef SessionPropose = JsonRpcRequest<SessionProposeParams>;

SessionPropose newSessionPropose({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcSessionPropose,
  required SessionProposeParams params,
}) {
  return SessionPropose(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}
//endregion

//region SessionSettle
typedef SessionSettle = JsonRpcRequest<SessionSettleParams>;

SessionSettle newSessionSettle({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcSessionSettle,
  required SessionSettleParams params,
}) {
  return SessionSettle(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}
//endregion

//region SessionRequest
typedef SessionRequest = JsonRpcRequest<SessionRequestParams>;

SessionRequest newSessionRequest({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcSessionRequest,
  required SessionRequestParams params,
}) {
  return SessionRequest(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}
//endregion

//region SessionDelete
typedef SessionDelete = JsonRpcRequest<DeleteParams>;

SessionDelete newSessionDelete({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcSessionDelete,
  required DeleteParams params,
}) {
  return SessionDelete(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}
//endregion

//region SessionPing
typedef SessionPing = JsonRpcRequest<PingParams>;

SessionPing newSessionPing({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcSessionPing,
  PingParams params = const PingParams(),
}) {
  return SessionPing(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}
//endregion

//region SessionEvent
typedef SessionEvent = JsonRpcRequest<EventParams>;

SessionEvent newSessionEvent({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcSessionEvent,
  required EventParams params,
}) {
  return SessionEvent(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}
//endregion

//region SessionUpdate
typedef SessionUpdate = JsonRpcRequest<UpdateNamespacesParams>;

SessionUpdate newSessionUpdate({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcSessionUpdate,
  required UpdateNamespacesParams params,
}) {
  return SessionUpdate(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}
//endregion

//region SessionExtend
typedef SessionExtend = JsonRpcRequest<ExtendParams>;

SessionExtend newSessionExtend({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcSessionExtend,
  required ExtendParams params,
}) {
  return SessionExtend(
    id: id,
    jsonrpc: jsonrpc,
    method: method,
    params: params,
  );
}
//endregion
