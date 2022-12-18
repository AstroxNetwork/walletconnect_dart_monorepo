// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_proposer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionProposer _$$_SessionProposerFromJson(Map json) => _$_SessionProposer(
      publicKey:
          const Uint8ListToHexConverter().fromJson(json['publicKey'] as String),
      metadata: AppMetaData.fromJson(
          Map<String, Object?>.from(json['metadata'] as Map)),
    );

Map<String, dynamic> _$$_SessionProposerToJson(_$_SessionProposer instance) =>
    <String, dynamic>{
      'publicKey': const Uint8ListToHexConverter().toJson(instance.publicKey),
      'metadata': instance.metadata.toJson(),
    };
