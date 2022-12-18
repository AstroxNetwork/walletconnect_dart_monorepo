// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_rpc_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonRpcRecord _$$_JsonRpcRecordFromJson(Map json) => _$_JsonRpcRecord(
      id: json['id'] as int,
      topic: json['topic'] as String,
      method: json['method'] as String,
      body: json['body'] as String,
      response: json['response'] as String?,
    );

Map<String, dynamic> _$$_JsonRpcRecordToJson(_$_JsonRpcRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'method': instance.method,
      'body': instance.body,
      'response': instance.response,
    };
