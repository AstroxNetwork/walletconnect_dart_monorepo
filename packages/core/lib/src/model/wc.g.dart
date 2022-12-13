// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletConnectUri _$$_WalletConnectUriFromJson(Map<String, dynamic> json) =>
    _$_WalletConnectUri(
      topic: json['topic'] as String,
      symKey:
          const Uint8ListToHexConverter().fromJson(json['symKey'] as String),
      relay:
          RelayProtocolOptions.fromJson(json['relay'] as Map<String, dynamic>),
      version: json['version'] as String? ?? '2',
    );

Map<String, dynamic> _$$_WalletConnectUriToJson(_$_WalletConnectUri instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'symKey': const Uint8ListToHexConverter().toJson(instance.symKey),
      'relay': instance.relay,
      'version': instance.version,
    };

_$_RelayProtocolOptions _$$_RelayProtocolOptionsFromJson(
        Map<String, dynamic> json) =>
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

_$_WCRequest _$$_WCRequestFromJson(Map<String, dynamic> json) => _$_WCRequest(
      topic:
          const TopicConverter().fromJson(json['topic'] as Map<String, String>),
      id: json['id'] as int,
      method: json['method'] as String,
      params: json['params'],
    );

Map<String, dynamic> _$$_WCRequestToJson(_$_WCRequest instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'id': instance.id,
      'method': instance.method,
      'params': instance.params,
    };
