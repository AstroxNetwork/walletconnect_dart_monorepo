// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$$_SessionFromJson(Map<String, dynamic> json) => _$_Session(
      topic:
          const TopicConverter().fromJson(json['topic'] as Map<String, String>),
      expiry:
          const ExpiryConverter().fromJson(json['expiry'] as Map<String, int>),
      relayProtocol: json['relayProtocol'] as String,
      relayData: json['relayData'] as String?,
      controllerKey: _$JsonConverterFromJson<String, Uint8List>(
          json['controllerKey'], const Uint8ListToHexConverter().fromJson),
      selfPublicKey: const Uint8ListToHexConverter()
          .fromJson(json['selfPublicKey'] as String),
      selfAppMetaData: json['selfAppMetaData'] == null
          ? null
          : AppMetaData.fromJson(
              json['selfAppMetaData'] as Map<String, dynamic>),
      peerPublicKey: _$JsonConverterFromJson<String, Uint8List>(
          json['peerPublicKey'], const Uint8ListToHexConverter().fromJson),
      peerAppMetaData: json['peerAppMetaData'] == null
          ? null
          : AppMetaData.fromJson(
              json['peerAppMetaData'] as Map<String, dynamic>),
      namespaces: (json['namespaces'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, NamespaceSession.fromJson(e as Map<String, dynamic>)),
      ),
      proposalNamespaces:
          (json['proposalNamespaces'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, NamespaceProposal.fromJson(e as Map<String, dynamic>)),
      ),
      isAcknowledged: json['isAcknowledged'] as bool,
    );

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'expiry': const ExpiryConverter().toJson(instance.expiry),
      'relayProtocol': instance.relayProtocol,
      'relayData': instance.relayData,
      'controllerKey': _$JsonConverterToJson<String, Uint8List>(
          instance.controllerKey, const Uint8ListToHexConverter().toJson),
      'selfPublicKey':
          const Uint8ListToHexConverter().toJson(instance.selfPublicKey),
      'selfAppMetaData': instance.selfAppMetaData,
      'peerPublicKey': _$JsonConverterToJson<String, Uint8List>(
          instance.peerPublicKey, const Uint8ListToHexConverter().toJson),
      'peerAppMetaData': instance.peerAppMetaData,
      'namespaces': instance.namespaces,
      'proposalNamespaces': instance.proposalNamespaces,
      'isAcknowledged': instance.isAcknowledged,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
