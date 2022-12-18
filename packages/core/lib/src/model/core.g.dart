// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoreParamsPing _$$CoreParamsPingFromJson(Map json) => _$CoreParamsPing(
      json['topic'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CoreParamsPingToJson(_$CoreParamsPing instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'runtimeType': instance.$type,
    };

_$CoreParamsDisconnect _$$CoreParamsDisconnectFromJson(Map json) =>
    _$CoreParamsDisconnect(
      json['topic'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CoreParamsDisconnectToJson(
        _$CoreParamsDisconnect instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'runtimeType': instance.$type,
    };

_$CoreParamsActivate _$$CoreParamsActivateFromJson(Map json) =>
    _$CoreParamsActivate(
      json['topic'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CoreParamsActivateToJson(
        _$CoreParamsActivate instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'runtimeType': instance.$type,
    };

_$CoreParamsUpdateExpiry _$$CoreParamsUpdateExpiryFromJson(Map json) =>
    _$CoreParamsUpdateExpiry(
      json['topic'] as String,
      Duration(microseconds: json['expiry'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CoreParamsUpdateExpiryToJson(
        _$CoreParamsUpdateExpiry instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'expiry': instance.expiry.inMicroseconds,
      'runtimeType': instance.$type,
    };

_$CoreParamsUpdateMetadata _$$CoreParamsUpdateMetadataFromJson(Map json) =>
    _$CoreParamsUpdateMetadata(
      json['topic'] as String,
      $enumDecode(_$AppMetaDataTypeEnumMap, json['type']),
      AppMetaData.fromJson(Map<String, Object?>.from(json['metadata'] as Map)),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CoreParamsUpdateMetadataToJson(
        _$CoreParamsUpdateMetadata instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'type': _$AppMetaDataTypeEnumMap[instance.type]!,
      'metadata': instance.metadata.toJson(),
      'runtimeType': instance.$type,
    };

const _$AppMetaDataTypeEnumMap = {
  AppMetaDataType.self: 'self',
  AppMetaDataType.peer: 'peer',
};

_$CoreParamsPair _$$CoreParamsPairFromJson(Map json) => _$CoreParamsPair(
      json['uri'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CoreParamsPairToJson(_$CoreParamsPair instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'runtimeType': instance.$type,
    };
