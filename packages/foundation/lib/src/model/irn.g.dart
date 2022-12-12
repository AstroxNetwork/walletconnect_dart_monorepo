// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'irn.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IrnParams _$$_IrnParamsFromJson(Map<String, dynamic> json) => _$_IrnParams(
      tag: json['tag'] as int,
      ttl: const ExpiryConverter().fromJson(json['ttl'] as Map<String, int>),
      prompt: json['prompt'] as bool? ?? false,
    );

Map<String, dynamic> _$$_IrnParamsToJson(_$_IrnParams instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'ttl': const ExpiryConverter().toJson(instance.ttl),
      'prompt': instance.prompt,
    };

_$_IrnJWTHeader _$$_IrnJWTHeaderFromJson(Map<String, dynamic> json) =>
    _$_IrnJWTHeader(
      algorithm: json['alg'] as String,
      type: json['typ'] as String,
    );

Map<String, dynamic> _$$_IrnJWTHeaderToJson(_$_IrnJWTHeader instance) =>
    <String, dynamic>{
      'alg': instance.algorithm,
      'typ': instance.type,
    };

_$_IrnJWTPayload _$$_IrnJWTPayloadFromJson(Map<String, dynamic> json) =>
    _$_IrnJWTPayload(
      issuer: json['iss'] as String,
      subject: json['sub'] as String,
      audience: json['aud'] as String,
      issuedAt: json['iat'] as int,
      expiration: json['exp'] as int,
    );

Map<String, dynamic> _$$_IrnJWTPayloadToJson(_$_IrnJWTPayload instance) =>
    <String, dynamic>{
      'iss': instance.issuer,
      'sub': instance.subject,
      'aud': instance.audience,
      'iat': instance.issuedAt,
      'exp': instance.expiration,
    };
