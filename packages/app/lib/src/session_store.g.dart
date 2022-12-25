// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$$_SessionFromJson(Map json) => _$_Session(
      topic: const TopicConverter().fromJson(json['topic'] as Map),
      pairingTopic:
          const TopicConverter().fromJson(json['pairingTopic'] as Map),
      expiry: const ExpiryConverter().fromJson(json['expiry'] as Map),
      relayProtocol: json['relayProtocol'] as String,
      requestId: json['requestId'] as int,
      relayData: json['relayData'] as String?,
      controllerKey: json['controllerKey'],
      selfPublicKey: json['selfPublicKey'],
      selfAppMetaData: json['selfAppMetaData'] == null
          ? null
          : AppMetaData.fromJson(
              Map<String, Object?>.from(json['selfAppMetaData'] as Map)),
      peerPublicKey: json['peerPublicKey'],
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
      isAcknowledged: json['isAcknowledged'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'pairingTopic': const TopicConverter().toJson(instance.pairingTopic),
      'expiry': const ExpiryConverter().toJson(instance.expiry),
      'relayProtocol': instance.relayProtocol,
      'requestId': instance.requestId,
      'relayData': instance.relayData,
      'controllerKey': instance.controllerKey,
      'selfPublicKey': instance.selfPublicKey,
      'selfAppMetaData': instance.selfAppMetaData?.toJson(),
      'peerPublicKey': instance.peerPublicKey,
      'peerAppMetaData': instance.peerAppMetaData?.toJson(),
      'namespaces': instance.namespaces.map((k, e) => MapEntry(k, e.toJson())),
      'proposalNamespaces':
          instance.proposalNamespaces.map((k, e) => MapEntry(k, e.toJson())),
      'isAcknowledged': instance.isAcknowledged,
      'runtimeType': instance.$type,
    };

_$_TempNamespaces _$$_TempNamespacesFromJson(Map json) => _$_TempNamespaces(
      topic: const TopicConverter().fromJson(json['topic'] as Map),
      requestId: json['requestId'] as int,
      isAcknowledged: json['isAcknowledged'] as bool? ?? false,
      namespaces: (json['namespaces'] as Map).map(
        (k, e) => MapEntry(k as String,
            NamespaceSession.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TempNamespacesToJson(_$_TempNamespaces instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'requestId': instance.requestId,
      'isAcknowledged': instance.isAcknowledged,
      'namespaces': instance.namespaces.map((k, e) => MapEntry(k, e.toJson())),
      'runtimeType': instance.$type,
    };
