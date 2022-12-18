// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Participants _$$_ParticipantsFromJson(Map json) => _$_Participants(
      senderPublicKey: const Uint8ListToHexConverter()
          .fromJson(json['senderPublicKey'] as String),
      receiverPublicKey: const Uint8ListToHexConverter()
          .fromJson(json['receiverPublicKey'] as String),
    );

Map<String, dynamic> _$$_ParticipantsToJson(_$_Participants instance) =>
    <String, dynamic>{
      'senderPublicKey':
          const Uint8ListToHexConverter().toJson(instance.senderPublicKey),
      'receiverPublicKey':
          const Uint8ListToHexConverter().toJson(instance.receiverPublicKey),
    };
