// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionRequestPayload _$$_SessionRequestPayloadFromJson(Map json) =>
    _$_SessionRequestPayload(
      method: json['method'] as String,
      params: json['params'] as String,
    );

Map<String, dynamic> _$$_SessionRequestPayloadToJson(
        _$_SessionRequestPayload instance) =>
    <String, dynamic>{
      'method': instance.method,
      'params': instance.params,
    };

_$_SessionEventPayload _$$_SessionEventPayloadFromJson(Map json) =>
    _$_SessionEventPayload(
      name: json['name'] as String,
      data: const ObjectConverter().fromJson(json['data'] as Object),
    );

Map<String, dynamic> _$$_SessionEventPayloadToJson(
        _$_SessionEventPayload instance) =>
    <String, dynamic>{
      'name': instance.name,
      'data': const ObjectConverter().toJson(instance.data),
    };

_$SessionProposeParams _$$SessionProposeParamsFromJson(Map json) =>
    _$SessionProposeParams(
      relays: (json['relays'] as List<dynamic>)
          .map((e) => RelayProtocolOptions.fromJson(
              Map<String, Object?>.from(e as Map)))
          .toList(),
      proposer: SessionProposer.fromJson(
          Map<String, dynamic>.from(json['proposer'] as Map)),
      namespaces: (json['requiredNamespaces'] as Map).map(
        (k, e) => MapEntry(k as String,
            NamespaceProposal.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionProposeParamsToJson(
        _$SessionProposeParams instance) =>
    <String, dynamic>{
      'relays': instance.relays.map((e) => e.toJson()).toList(),
      'proposer': instance.proposer.toJson(),
      'requiredNamespaces':
          instance.namespaces.map((k, e) => MapEntry(k, e.toJson())),
      'runtimeType': instance.$type,
    };

_$ApprovalParams _$$ApprovalParamsFromJson(Map json) => _$ApprovalParams(
      relay: RelayProtocolOptions.fromJson(
          Map<String, Object?>.from(json['relay'] as Map)),
      responderPublicKey: json['responderPublicKey'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApprovalParamsToJson(_$ApprovalParams instance) =>
    <String, dynamic>{
      'relay': instance.relay.toJson(),
      'responderPublicKey': instance.responderPublicKey,
      'runtimeType': instance.$type,
    };

_$SessionSettleParams _$$SessionSettleParamsFromJson(Map json) =>
    _$SessionSettleParams(
      relay: RelayProtocolOptions.fromJson(
          Map<String, Object?>.from(json['relay'] as Map)),
      controller: SessionProposer.fromJson(
          Map<String, dynamic>.from(json['controller'] as Map)),
      namespaces: (json['namespaces'] as Map).map(
        (k, e) => MapEntry(k as String,
            NamespaceSession.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      expiry: json['expiry'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionSettleParamsToJson(
        _$SessionSettleParams instance) =>
    <String, dynamic>{
      'relay': instance.relay.toJson(),
      'controller': instance.controller.toJson(),
      'namespaces': instance.namespaces.map((k, e) => MapEntry(k, e.toJson())),
      'expiry': instance.expiry,
      'runtimeType': instance.$type,
    };

_$SessionRequestParams _$$SessionRequestParamsFromJson(Map json) =>
    _$SessionRequestParams(
      request: SessionRequestPayload.fromJson(
          Map<String, dynamic>.from(json['request'] as Map)),
      chainId: json['chainId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionRequestParamsToJson(
        _$SessionRequestParams instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'chainId': instance.chainId,
      'runtimeType': instance.$type,
    };

_$EventParams _$$EventParamsFromJson(Map json) => _$EventParams(
      event: SessionEventPayload.fromJson(
          Map<String, dynamic>.from(json['event'] as Map)),
      chainId: json['chainId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EventParamsToJson(_$EventParams instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
      'chainId': instance.chainId,
      'runtimeType': instance.$type,
    };

_$UpdateNamespacesParams _$$UpdateNamespacesParamsFromJson(Map json) =>
    _$UpdateNamespacesParams(
      namespaces: (json['namespaces'] as Map).map(
        (k, e) => MapEntry(k as String,
            NamespaceSession.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UpdateNamespacesParamsToJson(
        _$UpdateNamespacesParams instance) =>
    <String, dynamic>{
      'namespaces': instance.namespaces.map((k, e) => MapEntry(k, e.toJson())),
      'runtimeType': instance.$type,
    };

_$ExtendParams _$$ExtendParamsFromJson(Map json) => _$ExtendParams(
      expiry: json['expiry'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ExtendParamsToJson(_$ExtendParams instance) =>
    <String, dynamic>{
      'expiry': instance.expiry,
      'runtimeType': instance.$type,
    };

_$DeleteParams _$$DeleteParamsFromJson(Map json) => _$DeleteParams(
      code: json['code'] as int? ?? -1,
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeleteParamsToJson(_$DeleteParams instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$PingParams _$$PingParamsFromJson(Map json) => _$PingParams(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PingParamsToJson(_$PingParams instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
