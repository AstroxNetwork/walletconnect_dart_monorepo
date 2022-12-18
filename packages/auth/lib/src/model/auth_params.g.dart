// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRequestParams _$$AuthRequestParamsFromJson(Map json) =>
    _$AuthRequestParams(
      requester: Requester.fromJson(
          Map<String, dynamic>.from(json['requester'] as Map)),
      payloadParams: PayloadParams.fromJson(
          Map<String, Object?>.from(json['payloadParams'] as Map)),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthRequestParamsToJson(_$AuthRequestParams instance) =>
    <String, dynamic>{
      'requester': instance.requester.toJson(),
      'payloadParams': instance.payloadParams.toJson(),
      'runtimeType': instance.$type,
    };

_$AuthResponseParams _$$AuthResponseParamsFromJson(Map json) =>
    _$AuthResponseParams(
      header: CacaoHeader.fromJson(Map<String, dynamic>.from(json['h'] as Map)),
      payload:
          CacaoPayload.fromJson(Map<String, dynamic>.from(json['p'] as Map)),
      signature:
          CacaoSignature.fromJson(Map<String, dynamic>.from(json['s'] as Map)),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthResponseParamsToJson(
        _$AuthResponseParams instance) =>
    <String, dynamic>{
      'h': instance.header.toJson(),
      'p': instance.payload.toJson(),
      's': instance.signature.toJson(),
      'runtimeType': instance.$type,
    };
