// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requester.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Requester _$$_RequesterFromJson(Map<String, dynamic> json) => _$_Requester(
      publicKey: json['publicKey'] as String,
      metadata: AppMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RequesterToJson(_$_Requester instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'metadata': instance.metadata,
    };
