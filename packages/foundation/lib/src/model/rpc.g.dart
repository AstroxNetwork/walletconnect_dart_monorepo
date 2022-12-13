// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonRpcRequest<T> _$$_JsonRpcRequestFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_JsonRpcRequest<T>(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String,
      params: fromJsonT(json['params']),
    );

Map<String, dynamic> _$$_JsonRpcRequestToJson<T>(
  _$_JsonRpcRequest<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': toJsonT(instance.params),
    };

_$JsonRpcResult<T> _$$JsonRpcResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$JsonRpcResult<T>(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      result: fromJsonT(json['result']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$JsonRpcResultToJson<T>(
  _$JsonRpcResult<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': toJsonT(instance.result),
      'runtimeType': instance.$type,
    };

_$JsonRpcError<T> _$$JsonRpcErrorFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$JsonRpcError<T>(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      error: JsonRpcOnError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$JsonRpcErrorToJson<T>(
  _$JsonRpcError<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$_JsonRpcOnError _$$_JsonRpcOnErrorFromJson(Map<String, dynamic> json) =>
    _$_JsonRpcOnError(
      code: json['code'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_JsonRpcOnErrorToJson(_$_JsonRpcOnError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
