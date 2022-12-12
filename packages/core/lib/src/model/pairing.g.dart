// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pairing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pairing _$$_PairingFromJson(Map<String, dynamic> json) => _$_Pairing(
      topic:
          const TopicConverter().fromJson(json['topic'] as Map<String, String>),
      expiry:
          const ExpiryConverter().fromJson(json['expiry'] as Map<String, int>),
      peerAppMetaData: json['peerAppMetaData'] == null
          ? null
          : AppMetaData.fromJson(
              json['peerAppMetaData'] as Map<String, dynamic>),
      relayProtocol: json['relayProtocol'] as String,
      relayData: json['relayData'] as String?,
      uri: const UriStringConverter().fromJson(json['uri'] as String),
      isActive: json['isActive'] as bool,
      registeredMethods: json['registeredMethods'] as String,
    );

Map<String, dynamic> _$$_PairingToJson(_$_Pairing instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'expiry': const ExpiryConverter().toJson(instance.expiry),
      'peerAppMetaData': instance.peerAppMetaData,
      'relayProtocol': instance.relayProtocol,
      'relayData': instance.relayData,
      'uri': const UriStringConverter().toJson(instance.uri),
      'isActive': instance.isActive,
      'registeredMethods': instance.registeredMethods,
    };
