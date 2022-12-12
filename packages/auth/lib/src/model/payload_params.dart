import 'package:freezed_annotation/freezed_annotation.dart';

part 'payload_params.freezed.dart';
part 'payload_params.g.dart';

@freezed
class PayloadParams with _$PayloadParams {
  const factory PayloadParams({
    required String type,
    required String chainId,
    required String domain,
    required String aud,
    required String version,
    required String nonce,
    required String iat,
    String? nbf,
    String? exp,
    String? statement,
    String? requestId,
    List<String>? resources,
  }) = _PayloadParams;

  factory PayloadParams.fromJson(Map<String, Object?> json) =>
      _$PayloadParamsFromJson(json);
}
