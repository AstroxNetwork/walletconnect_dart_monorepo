// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairing_rpc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PairingDeleteParams _$$PairingDeleteParamsFromJson(Map json) =>
    _$PairingDeleteParams(
      code: json['code'] as int? ?? -1,
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PairingDeleteParamsToJson(
        _$PairingDeleteParams instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$PairingPingParams _$$PairingPingParamsFromJson(Map json) =>
    _$PairingPingParams(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PairingPingParamsToJson(_$PairingPingParams instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
