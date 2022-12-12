// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionEvent _$$_SessionEventFromJson(Map<String, dynamic> json) =>
    _$_SessionEvent(
      name: json['name'] as String,
      data: const ObjectConverter().fromJson(json['data'] as Object),
    );

Map<String, dynamic> _$$_SessionEventToJson(_$_SessionEvent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'data': const ObjectConverter().toJson(instance.data),
    };
