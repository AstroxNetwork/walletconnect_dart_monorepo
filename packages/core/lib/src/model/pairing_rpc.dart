import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_core/src/rpc_method.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

part 'pairing_rpc.freezed.dart';

part 'pairing_rpc.g.dart';

typedef PairingDelete = JsonRpcRequest<DeleteParams>;
typedef PairingPing = JsonRpcRequest<PingParams>;

PairingDelete newPairingDelete({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcPairingDelete,
  required DeleteParams params,
}) {
  return PairingDelete(
    id: id,
    params: params,
    method: method,
    jsonrpc: jsonrpc,
  );
}

PairingPing newPairingPing({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcPairingPing,
  PingParams params = const PingParams(),
}) {
  return PairingPing(
    id: id,
    params: params,
    method: method,
    jsonrpc: jsonrpc,
  );
}

@freezed
class PairingParams with _$PairingParams {
  const factory PairingParams.delete(
      {@Default(-1) int code, required String message}) = DeleteParams;

  const factory PairingParams.ping() = PingParams;

  factory PairingParams.fromJson(Map<String, dynamic> json) =>
      _$PairingParamsFromJson(json);
}
