import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_core/src/rpc_method.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

part 'pairing_rpc.freezed.dart';

part 'pairing_rpc.g.dart';

typedef PairingDelete = JsonRpcRequest<PairingDeleteParams>;
typedef PairingPing = JsonRpcRequest<PairingPingParams>;

PairingDelete newPairingDelete({
  required int id,
  String jsonrpc = jsonRpcVersion,
  String method = JsonRpcMethod.wcPairingDelete,
  required PairingDeleteParams params,
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
  PairingPingParams params = const PairingPingParams(),
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
  const factory PairingParams.delete({
    @Default(-1) int code,
    required String message,
  }) = PairingDeleteParams;

  const factory PairingParams.ping() = PairingPingParams;

  factory PairingParams.fromJson(Map<String, dynamic> json) =>
      _$PairingParamsFromJson(json);
}
