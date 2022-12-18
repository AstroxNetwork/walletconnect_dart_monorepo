// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$$_SessionFromJson(Map json) => _$_Session(
      topic: const TopicConverter().fromJson(json['topic'] as Map),
      expiry: const ExpiryConverter().fromJson(json['expiry'] as Map),
      relayProtocol: json['relayProtocol'] as String,
      relayData: json['relayData'] as String?,
      controllerKey: _$JsonConverterFromJson<String, Uint8List>(
          json['controllerKey'], const Uint8ListToHexConverter().fromJson),
      selfPublicKey: const Uint8ListToHexConverter()
          .fromJson(json['selfPublicKey'] as String),
      selfAppMetaData: json['selfAppMetaData'] == null
          ? null
          : AppMetaData.fromJson(
              Map<String, Object?>.from(json['selfAppMetaData'] as Map)),
      peerPublicKey: _$JsonConverterFromJson<String, Uint8List>(
          json['peerPublicKey'], const Uint8ListToHexConverter().fromJson),
      peerAppMetaData: json['peerAppMetaData'] == null
          ? null
          : AppMetaData.fromJson(
              Map<String, Object?>.from(json['peerAppMetaData'] as Map)),
      namespaces: (json['namespaces'] as Map).map(
        (k, e) => MapEntry(k as String,
            NamespaceSession.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      proposalNamespaces: (json['proposalNamespaces'] as Map).map(
        (k, e) => MapEntry(k as String,
            NamespaceProposal.fromJson(Map<String, dynamic>.from(e as Map))),
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
      'selfAppMetaData': instance.selfAppMetaData?.toJson(),
      'peerPublicKey': _$JsonConverterToJson<String, Uint8List>(
          instance.peerPublicKey, const Uint8ListToHexConverter().toJson),
      'peerAppMetaData': instance.peerAppMetaData?.toJson(),
      'namespaces': instance.namespaces.map((k, e) => MapEntry(k, e.toJson())),
      'proposalNamespaces':
          instance.proposalNamespaces.map((k, e) => MapEntry(k, e.toJson())),
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
