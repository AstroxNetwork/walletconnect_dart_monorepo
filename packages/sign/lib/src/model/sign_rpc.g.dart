// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_rpc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionPropose _$$SessionProposeFromJson(Map<String, dynamic> json) =>
    _$SessionPropose(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? JsonRpcMethod.wcSessionPropose,
      params:
          SessionProposeParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionProposeToJson(_$SessionPropose instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$SessionSettle _$$SessionSettleFromJson(Map<String, dynamic> json) =>
    _$SessionSettle(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? JsonRpcMethod.wcSessionSettle,
      params:
          SessionSettleParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionSettleToJson(_$SessionSettle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$SessionRequest _$$SessionRequestFromJson(Map<String, dynamic> json) =>
    _$SessionRequest(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? JsonRpcMethod.wcSessionRequest,
      params:
          SessionRequestParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionRequestToJson(_$SessionRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$SessionDelete _$$SessionDeleteFromJson(Map<String, dynamic> json) =>
    _$SessionDelete(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? JsonRpcMethod.wcSessionDelete,
      params: DeleteParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionDeleteToJson(_$SessionDelete instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$SessionPing _$$SessionPingFromJson(Map<String, dynamic> json) =>
    _$SessionPing(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? JsonRpcMethod.wcSessionPing,
      params: PingParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionPingToJson(_$SessionPing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$SessionEvent _$$SessionEventFromJson(Map<String, dynamic> json) =>
    _$SessionEvent(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? JsonRpcMethod.wcSessionEvent,
      params: EventParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionEventToJson(_$SessionEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$SessionUpdate _$$SessionUpdateFromJson(Map<String, dynamic> json) =>
    _$SessionUpdate(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? JsonRpcMethod.wcSessionUpdate,
      params: UpdateNamespacesParams.fromJson(
          json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionUpdateToJson(_$SessionUpdate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$SessionExtend _$$SessionExtendFromJson(Map<String, dynamic> json) =>
    _$SessionExtend(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? JsonRpcMethod.wcSessionExtend,
      params: ExtendParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SessionExtendToJson(_$SessionExtend instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };
