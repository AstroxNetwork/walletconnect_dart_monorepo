// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PayloadParams _$$_PayloadParamsFromJson(Map<String, dynamic> json) =>
    _$_PayloadParams(
      type: json['type'] as String,
      chainId: json['chainId'] as String,
      domain: json['domain'] as String,
      aud: json['aud'] as String,
      version: json['version'] as String,
      nonce: json['nonce'] as String,
      iat: json['iat'] as String,
      nbf: json['nbf'] as String?,
      exp: json['exp'] as String?,
      statement: json['statement'] as String?,
      requestId: json['requestId'] as String?,
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_PayloadParamsToJson(_$_PayloadParams instance) =>
    <String, dynamic>{
      'type': instance.type,
      'chainId': instance.chainId,
      'domain': instance.domain,
      'aud': instance.aud,
      'version': instance.version,
      'nonce': instance.nonce,
      'iat': instance.iat,
      'nbf': instance.nbf,
      'exp': instance.exp,
      'statement': instance.statement,
      'requestId': instance.requestId,
      'resources': instance.resources,
    };
