// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requester.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Requester _$$_RequesterFromJson(Map json) => _$_Requester(
      publicKey: json['publicKey'] as String,
      metadata: AppMetaData.fromJson(
          Map<String, Object?>.from(json['metadata'] as Map)),
    );

Map<String, dynamic> _$$_RequesterToJson(_$_Requester instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'metadata': instance.metadata.toJson(),
    };
