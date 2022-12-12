// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRequestParams _$$AuthRequestParamsFromJson(Map<String, dynamic> json) =>
    _$AuthRequestParams(
      requester: Requester.fromJson(json['requester'] as Map<String, dynamic>),
      payloadParams:
          PayloadParams.fromJson(json['payloadParams'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthRequestParamsToJson(_$AuthRequestParams instance) =>
    <String, dynamic>{
      'requester': instance.requester,
      'payloadParams': instance.payloadParams,
      'runtimeType': instance.$type,
    };

_$AuthResponseParams _$$AuthResponseParamsFromJson(Map<String, dynamic> json) =>
    _$AuthResponseParams(
      header: CacaoHeader.fromJson(json['h'] as Map<String, dynamic>),
      payload: CacaoPayload.fromJson(json['p'] as Map<String, dynamic>),
      signature: CacaoSignature.fromJson(json['s'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthResponseParamsToJson(
        _$AuthResponseParams instance) =>
    <String, dynamic>{
      'h': instance.header,
      'p': instance.payload,
      's': instance.signature,
      'runtimeType': instance.$type,
    };
