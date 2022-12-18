// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletConnectUri _$$_WalletConnectUriFromJson(Map json) =>
    _$_WalletConnectUri(
      topic: json['topic'] as String,
      symKey:
          const Uint8ListToHexConverter().fromJson(json['symKey'] as String),
      relay: RelayProtocolOptions.fromJson(
          Map<String, Object?>.from(json['relay'] as Map)),
      version: json['version'] as String? ?? '2',
    );

Map<String, dynamic> _$$_WalletConnectUriToJson(_$_WalletConnectUri instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'symKey': const Uint8ListToHexConverter().toJson(instance.symKey),
      'relay': instance.relay.toJson(),
      'version': instance.version,
    };

_$_RelayProtocolOptions _$$_RelayProtocolOptionsFromJson(Map json) =>
    _$_RelayProtocolOptions(
      protocol: json['protocol'] as String? ?? 'irn',
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$_RelayProtocolOptionsToJson(
        _$_RelayProtocolOptions instance) =>
    <String, dynamic>{
      'protocol': instance.protocol,
      'data': instance.data,
    };

_$_WCRequest<T> _$$_WCRequestFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    _$_WCRequest<T>(
      topic: const TopicConverter().fromJson(json['topic'] as Map),
      id: json['id'] as int,
      method: json['method'] as String,
      params: fromJsonT(json['params']),
    );

Map<String, dynamic> _$$_WCRequestToJson<T>(
  _$_WCRequest<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'id': instance.id,
      'method': instance.method,
      'params': toJsonT(instance.params),
    };
