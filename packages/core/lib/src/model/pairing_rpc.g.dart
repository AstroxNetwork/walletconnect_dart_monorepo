// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairing_rpc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteParams _$$DeleteParamsFromJson(Map<String, dynamic> json) =>
    _$DeleteParams(
      code: json['code'] as int? ?? -1,
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeleteParamsToJson(_$DeleteParams instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$PingParams _$$PingParamsFromJson(Map<String, dynamic> json) => _$PingParams(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PingParamsToJson(_$PingParams instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
