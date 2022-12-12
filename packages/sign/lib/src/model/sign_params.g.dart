// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionProposeParams _$$SessionProposeParamsFromJson(
        Map<String, dynamic> json) =>
    _$SessionProposeParams(
      relays: (json['relays'] as List<dynamic>)
          .map((e) => RelayProtocolOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      proposer:
          SessionProposer.fromJson(json['proposer'] as Map<String, dynamic>),
      namespaces: (json['requiredNamespaces'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, NamespaceProposal.fromJson(e as Map<String, dynamic>)),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionProposeParamsToJson(
        _$SessionProposeParams instance) =>
    <String, dynamic>{
      'relays': instance.relays,
      'proposer': instance.proposer,
      'requiredNamespaces': instance.namespaces,
      'runtimeType': instance.$type,
    };

_$ApprovalParams _$$ApprovalParamsFromJson(Map<String, dynamic> json) =>
    _$ApprovalParams(
      relay:
          RelayProtocolOptions.fromJson(json['relay'] as Map<String, dynamic>),
      responderPublicKey: json['responderPublicKey'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApprovalParamsToJson(_$ApprovalParams instance) =>
    <String, dynamic>{
      'relay': instance.relay,
      'responderPublicKey': instance.responderPublicKey,
      'runtimeType': instance.$type,
    };

_$SessionSettleParams _$$SessionSettleParamsFromJson(
        Map<String, dynamic> json) =>
    _$SessionSettleParams(
      relay:
          RelayProtocolOptions.fromJson(json['relay'] as Map<String, dynamic>),
      controller:
          SessionProposer.fromJson(json['controller'] as Map<String, dynamic>),
      namespaces: (json['namespaces'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, NamespaceSession.fromJson(e as Map<String, dynamic>)),
      ),
      expiry: json['expiry'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionSettleParamsToJson(
        _$SessionSettleParams instance) =>
    <String, dynamic>{
      'relay': instance.relay,
      'controller': instance.controller,
      'namespaces': instance.namespaces,
      'expiry': instance.expiry,
      'runtimeType': instance.$type,
    };

_$SessionRequestParams _$$SessionRequestParamsFromJson(
        Map<String, dynamic> json) =>
    _$SessionRequestParams(
      request: SessionRequest.fromJson(json['request'] as Map<String, dynamic>),
      chainId: json['chainId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionRequestParamsToJson(
        _$SessionRequestParams instance) =>
    <String, dynamic>{
      'request': instance.request,
      'chainId': instance.chainId,
      'runtimeType': instance.$type,
    };

_$EventParams _$$EventParamsFromJson(Map<String, dynamic> json) =>
    _$EventParams(
      request: SessionRequest.fromJson(json['request'] as Map<String, dynamic>),
      chainId: json['chainId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EventParamsToJson(_$EventParams instance) =>
    <String, dynamic>{
      'request': instance.request,
      'chainId': instance.chainId,
      'runtimeType': instance.$type,
    };

_$UpdateNamespacesParams _$$UpdateNamespacesParamsFromJson(
        Map<String, dynamic> json) =>
    _$UpdateNamespacesParams(
      namespaces: (json['namespaces'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, NamespaceSession.fromJson(e as Map<String, dynamic>)),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UpdateNamespacesParamsToJson(
        _$UpdateNamespacesParams instance) =>
    <String, dynamic>{
      'namespaces': instance.namespaces,
      'runtimeType': instance.$type,
    };

_$ExtendParams _$$ExtendParamsFromJson(Map<String, dynamic> json) =>
    _$ExtendParams(
      expiry: json['expiry'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ExtendParamsToJson(_$ExtendParams instance) =>
    <String, dynamic>{
      'expiry': instance.expiry,
      'runtimeType': instance.$type,
    };

_$DeleteParams _$$DeleteParamsFromJson(Map<String, dynamic> json) =>
    _$DeleteParams(
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

_$PingParams _$$PingParamsFromJson(Map<String, dynamic> json) => _$PingParams(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PingParamsToJson(_$PingParams instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
