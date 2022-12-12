// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_rpc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRpcRequest _$$AuthRpcRequestFromJson(Map<String, dynamic> json) =>
    _$AuthRpcRequest(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? JsonRpcMethod.wcAuthRequest,
      params:
          AuthRequestParams.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthRpcRequestToJson(_$AuthRpcRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
    };
