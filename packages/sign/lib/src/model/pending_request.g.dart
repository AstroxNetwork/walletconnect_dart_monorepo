// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PendingRequest _$$_PendingRequestFromJson(Map json) => _$_PendingRequest(
      id: json['id'] as int,
      method: json['method'] as String,
      topic: const TopicConverter().fromJson(json['topic'] as Map),
      params: json['params'] as String,
    );

Map<String, dynamic> _$$_PendingRequestToJson(_$_PendingRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'method': instance.method,
      'topic': const TopicConverter().toJson(instance.topic),
      'params': instance.params,
    };
