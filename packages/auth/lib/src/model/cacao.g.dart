// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cacao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cacao _$$_CacaoFromJson(Map json) => _$_Cacao(
      header: CacaoHeader.fromJson(
          Map<String, dynamic>.from(json['header'] as Map)),
      payload: CacaoPayload.fromJson(
          Map<String, dynamic>.from(json['payload'] as Map)),
      signature: CacaoSignature.fromJson(
          Map<String, dynamic>.from(json['signature'] as Map)),
    );

Map<String, dynamic> _$$_CacaoToJson(_$_Cacao instance) => <String, dynamic>{
      'header': instance.header.toJson(),
      'payload': instance.payload.toJson(),
      'signature': instance.signature.toJson(),
    };

_$_CacaoSignature _$$_CacaoSignatureFromJson(Map json) => _$_CacaoSignature(
      t: json['t'] as String,
      s: json['s'] as String,
      m: json['m'] as String?,
    );

Map<String, dynamic> _$$_CacaoSignatureToJson(_$_CacaoSignature instance) =>
    <String, dynamic>{
      't': instance.t,
      's': instance.s,
      'm': instance.m,
    };

_$_CacaoHeader _$$_CacaoHeaderFromJson(Map json) => _$_CacaoHeader(
      json['t'] as String,
    );

Map<String, dynamic> _$$_CacaoHeaderToJson(_$_CacaoHeader instance) =>
    <String, dynamic>{
      't': instance.t,
    };

_$_CacaoPayload _$$_CacaoPayloadFromJson(Map json) => _$_CacaoPayload(
      iss: json['iss'] as String,
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

Map<String, dynamic> _$$_CacaoPayloadToJson(_$_CacaoPayload instance) =>
    <String, dynamic>{
      'iss': instance.iss,
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
