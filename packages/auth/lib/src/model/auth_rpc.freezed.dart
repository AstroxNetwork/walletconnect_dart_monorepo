// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_rpc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthRpc _$AuthRpcFromJson(Map<String, dynamic> json) {
  return AuthRpcRequest.fromJson(json);
}

/// @nodoc
mixin _$AuthRpc {
  int get id => throw _privateConstructorUsedError;
  String get jsonrpc => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  AuthRequestParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, AuthRequestParams params)
        request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, AuthRequestParams params)?
        request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, AuthRequestParams params)?
        request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRpcRequest value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRpcRequest value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRpcRequest value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthRpcCopyWith<AuthRpc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRpcCopyWith<$Res> {
  factory $AuthRpcCopyWith(AuthRpc value, $Res Function(AuthRpc) then) =
      _$AuthRpcCopyWithImpl<$Res, AuthRpc>;
  @useResult
  $Res call({int id, String jsonrpc, String method, AuthRequestParams params});
}

/// @nodoc
class _$AuthRpcCopyWithImpl<$Res, $Val extends AuthRpc>
    implements $AuthRpcCopyWith<$Res> {
  _$AuthRpcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      jsonrpc: null == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AuthRequestParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthRpcRequestCopyWith<$Res>
    implements $AuthRpcCopyWith<$Res> {
  factory _$$AuthRpcRequestCopyWith(
          _$AuthRpcRequest value, $Res Function(_$AuthRpcRequest) then) =
      __$$AuthRpcRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String jsonrpc, String method, AuthRequestParams params});
}

/// @nodoc
class __$$AuthRpcRequestCopyWithImpl<$Res>
    extends _$AuthRpcCopyWithImpl<$Res, _$AuthRpcRequest>
    implements _$$AuthRpcRequestCopyWith<$Res> {
  __$$AuthRpcRequestCopyWithImpl(
      _$AuthRpcRequest _value, $Res Function(_$AuthRpcRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$AuthRpcRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      jsonrpc: null == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AuthRequestParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthRpcRequest implements AuthRpcRequest {
  const _$AuthRpcRequest(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      this.method = JsonRpcMethod.wcAuthRequest,
      required this.params});

  factory _$AuthRpcRequest.fromJson(Map<String, dynamic> json) =>
      _$$AuthRpcRequestFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  @JsonKey()
  final String method;
  @override
  final AuthRequestParams params;

  @override
  String toString() {
    return 'AuthRpc.request(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRpcRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, jsonrpc, method,
      const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRpcRequestCopyWith<_$AuthRpcRequest> get copyWith =>
      __$$AuthRpcRequestCopyWithImpl<_$AuthRpcRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, AuthRequestParams params)
        request,
  }) {
    return request(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, AuthRequestParams params)?
        request,
  }) {
    return request?.call(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, AuthRequestParams params)?
        request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(id, jsonrpc, method, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRpcRequest value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRpcRequest value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRpcRequest value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRpcRequestToJson(
      this,
    );
  }
}

abstract class AuthRpcRequest implements AuthRpc {
  const factory AuthRpcRequest(
      {required final int id,
      final String jsonrpc,
      final String method,
      required final AuthRequestParams params}) = _$AuthRpcRequest;

  factory AuthRpcRequest.fromJson(Map<String, dynamic> json) =
      _$AuthRpcRequest.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  @override
  AuthRequestParams get params;
  @override
  @JsonKey(ignore: true)
  _$$AuthRpcRequestCopyWith<_$AuthRpcRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
