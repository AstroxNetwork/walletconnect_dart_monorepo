import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

part 'irn.freezed.dart';
part 'irn.g.dart';

@freezed
class IrnParams with _$IrnParams {
  const factory IrnParams({
    required int tag,
    @TtlConverter() required Duration ttl,
    @Default(false) bool prompt,
  }) = _IrnParams;

  factory IrnParams.fromJson(Map<String, Object?> json) =>
      _$IrnParamsFromJson(json);
}

@freezed
class IrnJWTHeader with _$IrnJWTHeader {
  const factory IrnJWTHeader({
    @JsonKey(name: 'alg') required String algorithm,
    @JsonKey(name: 'typ') required String type,
  }) = _IrnJWTHeader;

  factory IrnJWTHeader.fromJson(Map<String, Object?> json) =>
      _$IrnJWTHeaderFromJson(json);
}

@freezed
class IrnJWTPayload with _$IrnJWTPayload {
  const factory IrnJWTPayload({
    @JsonKey(name: 'iss') required String issuer,
    @JsonKey(name: 'sub') required String subject,
    @JsonKey(name: 'aud') required String audience,
    @JsonKey(name: 'iat') required int issuedAt,
    @JsonKey(name: 'exp') required int expiration,
  }) = _IrnJWTPayload;

  factory IrnJWTPayload.fromJson(Map<String, Object?> json) =>
      _$IrnJWTPayloadFromJson(json);
}
