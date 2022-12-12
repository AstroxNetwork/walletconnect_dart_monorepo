import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_core/core.dart';

import 'cacao.dart';
import 'payload_params.dart';
import 'requester.dart';

part 'auth_params.freezed.dart';

part 'auth_params.g.dart';

@freezed
class AuthParams with _$AuthParams implements ClientParams {
  const factory AuthParams.request({
    required Requester requester,
    required PayloadParams payloadParams,
  }) = AuthRequestParams;

  @Implements<Cacao>()
  const factory AuthParams.response({
    @JsonKey(name: 'h') required CacaoHeader header,
    @JsonKey(name: 'p') required CacaoPayload payload,
    @JsonKey(name: 's') required CacaoSignature signature,
  }) = AuthResponseParams;

  factory AuthParams.fromJson(Map<String, dynamic> json) =>
      _$AuthParamsFromJson(json);
}
