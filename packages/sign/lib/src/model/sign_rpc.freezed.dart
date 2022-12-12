// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_rpc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignRpc _$SignRpcFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'sessionPropose':
      return SessionPropose.fromJson(json);
    case 'sessionSettle':
      return SessionSettle.fromJson(json);
    case 'sessionRequest':
      return SessionRequest.fromJson(json);
    case 'sessionDelete':
      return SessionDelete.fromJson(json);
    case 'sessionPing':
      return SessionPing.fromJson(json);
    case 'sessionEvent':
      return SessionEvent.fromJson(json);
    case 'sessionUpdate':
      return SessionUpdate.fromJson(json);
    case 'sessionExtend':
      return SessionExtend.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SignRpc',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SignRpc {
  int get id => throw _privateConstructorUsedError;
  String get jsonrpc => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)
        sessionPropose,
    required TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)
        sessionSettle,
    required TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)
        sessionRequest,
    required TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)
        sessionDelete,
    required TResult Function(
            int id, String jsonrpc, String method, PingParams params)
        sessionPing,
    required TResult Function(
            int id, String jsonrpc, String method, EventParams params)
        sessionEvent,
    required TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)
        sessionUpdate,
    required TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)
        sessionExtend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult? Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult? Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult? Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult? Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult? Function(
            int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult? Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult? Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult Function(int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionPropose value) sessionPropose,
    required TResult Function(SessionSettle value) sessionSettle,
    required TResult Function(SessionRequest value) sessionRequest,
    required TResult Function(SessionDelete value) sessionDelete,
    required TResult Function(SessionPing value) sessionPing,
    required TResult Function(SessionEvent value) sessionEvent,
    required TResult Function(SessionUpdate value) sessionUpdate,
    required TResult Function(SessionExtend value) sessionExtend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionPropose value)? sessionPropose,
    TResult? Function(SessionSettle value)? sessionSettle,
    TResult? Function(SessionRequest value)? sessionRequest,
    TResult? Function(SessionDelete value)? sessionDelete,
    TResult? Function(SessionPing value)? sessionPing,
    TResult? Function(SessionEvent value)? sessionEvent,
    TResult? Function(SessionUpdate value)? sessionUpdate,
    TResult? Function(SessionExtend value)? sessionExtend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionPropose value)? sessionPropose,
    TResult Function(SessionSettle value)? sessionSettle,
    TResult Function(SessionRequest value)? sessionRequest,
    TResult Function(SessionDelete value)? sessionDelete,
    TResult Function(SessionPing value)? sessionPing,
    TResult Function(SessionEvent value)? sessionEvent,
    TResult Function(SessionUpdate value)? sessionUpdate,
    TResult Function(SessionExtend value)? sessionExtend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignRpcCopyWith<SignRpc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignRpcCopyWith<$Res> {
  factory $SignRpcCopyWith(SignRpc value, $Res Function(SignRpc) then) =
      _$SignRpcCopyWithImpl<$Res, SignRpc>;
  @useResult
  $Res call({int id, String jsonrpc, String method});
}

/// @nodoc
class _$SignRpcCopyWithImpl<$Res, $Val extends SignRpc>
    implements $SignRpcCopyWith<$Res> {
  _$SignRpcCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionProposeCopyWith<$Res>
    implements $SignRpcCopyWith<$Res> {
  factory _$$SessionProposeCopyWith(
          _$SessionPropose value, $Res Function(_$SessionPropose) then) =
      __$$SessionProposeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String jsonrpc, String method, SessionProposeParams params});
}

/// @nodoc
class __$$SessionProposeCopyWithImpl<$Res>
    extends _$SignRpcCopyWithImpl<$Res, _$SessionPropose>
    implements _$$SessionProposeCopyWith<$Res> {
  __$$SessionProposeCopyWithImpl(
      _$SessionPropose _value, $Res Function(_$SessionPropose) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$SessionPropose(
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
              as SessionProposeParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionPropose implements SessionPropose {
  const _$SessionPropose(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      this.method = JsonRpcMethod.wcSessionPropose,
      required this.params,
      final String? $type})
      : $type = $type ?? 'sessionPropose';

  factory _$SessionPropose.fromJson(Map<String, dynamic> json) =>
      _$$SessionProposeFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  @JsonKey()
  final String method;
  @override
  final SessionProposeParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignRpc.sessionPropose(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionPropose &&
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
  _$$SessionProposeCopyWith<_$SessionPropose> get copyWith =>
      __$$SessionProposeCopyWithImpl<_$SessionPropose>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)
        sessionPropose,
    required TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)
        sessionSettle,
    required TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)
        sessionRequest,
    required TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)
        sessionDelete,
    required TResult Function(
            int id, String jsonrpc, String method, PingParams params)
        sessionPing,
    required TResult Function(
            int id, String jsonrpc, String method, EventParams params)
        sessionEvent,
    required TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)
        sessionUpdate,
    required TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)
        sessionExtend,
  }) {
    return sessionPropose(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult? Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult? Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult? Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult? Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult? Function(
            int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult? Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult? Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
  }) {
    return sessionPropose?.call(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult Function(int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionPropose != null) {
      return sessionPropose(id, jsonrpc, method, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionPropose value) sessionPropose,
    required TResult Function(SessionSettle value) sessionSettle,
    required TResult Function(SessionRequest value) sessionRequest,
    required TResult Function(SessionDelete value) sessionDelete,
    required TResult Function(SessionPing value) sessionPing,
    required TResult Function(SessionEvent value) sessionEvent,
    required TResult Function(SessionUpdate value) sessionUpdate,
    required TResult Function(SessionExtend value) sessionExtend,
  }) {
    return sessionPropose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionPropose value)? sessionPropose,
    TResult? Function(SessionSettle value)? sessionSettle,
    TResult? Function(SessionRequest value)? sessionRequest,
    TResult? Function(SessionDelete value)? sessionDelete,
    TResult? Function(SessionPing value)? sessionPing,
    TResult? Function(SessionEvent value)? sessionEvent,
    TResult? Function(SessionUpdate value)? sessionUpdate,
    TResult? Function(SessionExtend value)? sessionExtend,
  }) {
    return sessionPropose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionPropose value)? sessionPropose,
    TResult Function(SessionSettle value)? sessionSettle,
    TResult Function(SessionRequest value)? sessionRequest,
    TResult Function(SessionDelete value)? sessionDelete,
    TResult Function(SessionPing value)? sessionPing,
    TResult Function(SessionEvent value)? sessionEvent,
    TResult Function(SessionUpdate value)? sessionUpdate,
    TResult Function(SessionExtend value)? sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionPropose != null) {
      return sessionPropose(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionProposeToJson(
      this,
    );
  }
}

abstract class SessionPropose implements SignRpc {
  const factory SessionPropose(
      {required final int id,
      final String jsonrpc,
      final String method,
      required final SessionProposeParams params}) = _$SessionPropose;

  factory SessionPropose.fromJson(Map<String, dynamic> json) =
      _$SessionPropose.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  SessionProposeParams get params;
  @override
  @JsonKey(ignore: true)
  _$$SessionProposeCopyWith<_$SessionPropose> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionSettleCopyWith<$Res>
    implements $SignRpcCopyWith<$Res> {
  factory _$$SessionSettleCopyWith(
          _$SessionSettle value, $Res Function(_$SessionSettle) then) =
      __$$SessionSettleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String jsonrpc, String method, SessionSettleParams params});
}

/// @nodoc
class __$$SessionSettleCopyWithImpl<$Res>
    extends _$SignRpcCopyWithImpl<$Res, _$SessionSettle>
    implements _$$SessionSettleCopyWith<$Res> {
  __$$SessionSettleCopyWithImpl(
      _$SessionSettle _value, $Res Function(_$SessionSettle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$SessionSettle(
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
              as SessionSettleParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionSettle implements SessionSettle {
  const _$SessionSettle(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      this.method = JsonRpcMethod.wcSessionSettle,
      required this.params,
      final String? $type})
      : $type = $type ?? 'sessionSettle';

  factory _$SessionSettle.fromJson(Map<String, dynamic> json) =>
      _$$SessionSettleFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  @JsonKey()
  final String method;
  @override
  final SessionSettleParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignRpc.sessionSettle(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionSettle &&
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
  _$$SessionSettleCopyWith<_$SessionSettle> get copyWith =>
      __$$SessionSettleCopyWithImpl<_$SessionSettle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)
        sessionPropose,
    required TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)
        sessionSettle,
    required TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)
        sessionRequest,
    required TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)
        sessionDelete,
    required TResult Function(
            int id, String jsonrpc, String method, PingParams params)
        sessionPing,
    required TResult Function(
            int id, String jsonrpc, String method, EventParams params)
        sessionEvent,
    required TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)
        sessionUpdate,
    required TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)
        sessionExtend,
  }) {
    return sessionSettle(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult? Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult? Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult? Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult? Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult? Function(
            int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult? Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult? Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
  }) {
    return sessionSettle?.call(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult Function(int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionSettle != null) {
      return sessionSettle(id, jsonrpc, method, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionPropose value) sessionPropose,
    required TResult Function(SessionSettle value) sessionSettle,
    required TResult Function(SessionRequest value) sessionRequest,
    required TResult Function(SessionDelete value) sessionDelete,
    required TResult Function(SessionPing value) sessionPing,
    required TResult Function(SessionEvent value) sessionEvent,
    required TResult Function(SessionUpdate value) sessionUpdate,
    required TResult Function(SessionExtend value) sessionExtend,
  }) {
    return sessionSettle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionPropose value)? sessionPropose,
    TResult? Function(SessionSettle value)? sessionSettle,
    TResult? Function(SessionRequest value)? sessionRequest,
    TResult? Function(SessionDelete value)? sessionDelete,
    TResult? Function(SessionPing value)? sessionPing,
    TResult? Function(SessionEvent value)? sessionEvent,
    TResult? Function(SessionUpdate value)? sessionUpdate,
    TResult? Function(SessionExtend value)? sessionExtend,
  }) {
    return sessionSettle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionPropose value)? sessionPropose,
    TResult Function(SessionSettle value)? sessionSettle,
    TResult Function(SessionRequest value)? sessionRequest,
    TResult Function(SessionDelete value)? sessionDelete,
    TResult Function(SessionPing value)? sessionPing,
    TResult Function(SessionEvent value)? sessionEvent,
    TResult Function(SessionUpdate value)? sessionUpdate,
    TResult Function(SessionExtend value)? sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionSettle != null) {
      return sessionSettle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionSettleToJson(
      this,
    );
  }
}

abstract class SessionSettle implements SignRpc {
  const factory SessionSettle(
      {required final int id,
      final String jsonrpc,
      final String method,
      required final SessionSettleParams params}) = _$SessionSettle;

  factory SessionSettle.fromJson(Map<String, dynamic> json) =
      _$SessionSettle.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  SessionSettleParams get params;
  @override
  @JsonKey(ignore: true)
  _$$SessionSettleCopyWith<_$SessionSettle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionRequestCopyWith<$Res>
    implements $SignRpcCopyWith<$Res> {
  factory _$$SessionRequestCopyWith(
          _$SessionRequest value, $Res Function(_$SessionRequest) then) =
      __$$SessionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String jsonrpc, String method, SessionRequestParams params});
}

/// @nodoc
class __$$SessionRequestCopyWithImpl<$Res>
    extends _$SignRpcCopyWithImpl<$Res, _$SessionRequest>
    implements _$$SessionRequestCopyWith<$Res> {
  __$$SessionRequestCopyWithImpl(
      _$SessionRequest _value, $Res Function(_$SessionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$SessionRequest(
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
              as SessionRequestParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionRequest implements SessionRequest {
  const _$SessionRequest(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      this.method = JsonRpcMethod.wcSessionRequest,
      required this.params,
      final String? $type})
      : $type = $type ?? 'sessionRequest';

  factory _$SessionRequest.fromJson(Map<String, dynamic> json) =>
      _$$SessionRequestFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  @JsonKey()
  final String method;
  @override
  final SessionRequestParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignRpc.sessionRequest(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionRequest &&
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
  _$$SessionRequestCopyWith<_$SessionRequest> get copyWith =>
      __$$SessionRequestCopyWithImpl<_$SessionRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)
        sessionPropose,
    required TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)
        sessionSettle,
    required TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)
        sessionRequest,
    required TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)
        sessionDelete,
    required TResult Function(
            int id, String jsonrpc, String method, PingParams params)
        sessionPing,
    required TResult Function(
            int id, String jsonrpc, String method, EventParams params)
        sessionEvent,
    required TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)
        sessionUpdate,
    required TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)
        sessionExtend,
  }) {
    return sessionRequest(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult? Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult? Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult? Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult? Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult? Function(
            int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult? Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult? Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
  }) {
    return sessionRequest?.call(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult Function(int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionRequest != null) {
      return sessionRequest(id, jsonrpc, method, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionPropose value) sessionPropose,
    required TResult Function(SessionSettle value) sessionSettle,
    required TResult Function(SessionRequest value) sessionRequest,
    required TResult Function(SessionDelete value) sessionDelete,
    required TResult Function(SessionPing value) sessionPing,
    required TResult Function(SessionEvent value) sessionEvent,
    required TResult Function(SessionUpdate value) sessionUpdate,
    required TResult Function(SessionExtend value) sessionExtend,
  }) {
    return sessionRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionPropose value)? sessionPropose,
    TResult? Function(SessionSettle value)? sessionSettle,
    TResult? Function(SessionRequest value)? sessionRequest,
    TResult? Function(SessionDelete value)? sessionDelete,
    TResult? Function(SessionPing value)? sessionPing,
    TResult? Function(SessionEvent value)? sessionEvent,
    TResult? Function(SessionUpdate value)? sessionUpdate,
    TResult? Function(SessionExtend value)? sessionExtend,
  }) {
    return sessionRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionPropose value)? sessionPropose,
    TResult Function(SessionSettle value)? sessionSettle,
    TResult Function(SessionRequest value)? sessionRequest,
    TResult Function(SessionDelete value)? sessionDelete,
    TResult Function(SessionPing value)? sessionPing,
    TResult Function(SessionEvent value)? sessionEvent,
    TResult Function(SessionUpdate value)? sessionUpdate,
    TResult Function(SessionExtend value)? sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionRequest != null) {
      return sessionRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionRequestToJson(
      this,
    );
  }
}

abstract class SessionRequest implements SignRpc {
  const factory SessionRequest(
      {required final int id,
      final String jsonrpc,
      final String method,
      required final SessionRequestParams params}) = _$SessionRequest;

  factory SessionRequest.fromJson(Map<String, dynamic> json) =
      _$SessionRequest.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  SessionRequestParams get params;
  @override
  @JsonKey(ignore: true)
  _$$SessionRequestCopyWith<_$SessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionDeleteCopyWith<$Res>
    implements $SignRpcCopyWith<$Res> {
  factory _$$SessionDeleteCopyWith(
          _$SessionDelete value, $Res Function(_$SessionDelete) then) =
      __$$SessionDeleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String jsonrpc, String method, DeleteParams params});
}

/// @nodoc
class __$$SessionDeleteCopyWithImpl<$Res>
    extends _$SignRpcCopyWithImpl<$Res, _$SessionDelete>
    implements _$$SessionDeleteCopyWith<$Res> {
  __$$SessionDeleteCopyWithImpl(
      _$SessionDelete _value, $Res Function(_$SessionDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$SessionDelete(
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
              as DeleteParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDelete implements SessionDelete {
  const _$SessionDelete(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      this.method = JsonRpcMethod.wcSessionDelete,
      required this.params,
      final String? $type})
      : $type = $type ?? 'sessionDelete';

  factory _$SessionDelete.fromJson(Map<String, dynamic> json) =>
      _$$SessionDeleteFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  @JsonKey()
  final String method;
  @override
  final DeleteParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignRpc.sessionDelete(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDelete &&
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
  _$$SessionDeleteCopyWith<_$SessionDelete> get copyWith =>
      __$$SessionDeleteCopyWithImpl<_$SessionDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)
        sessionPropose,
    required TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)
        sessionSettle,
    required TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)
        sessionRequest,
    required TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)
        sessionDelete,
    required TResult Function(
            int id, String jsonrpc, String method, PingParams params)
        sessionPing,
    required TResult Function(
            int id, String jsonrpc, String method, EventParams params)
        sessionEvent,
    required TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)
        sessionUpdate,
    required TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)
        sessionExtend,
  }) {
    return sessionDelete(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult? Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult? Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult? Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult? Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult? Function(
            int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult? Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult? Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
  }) {
    return sessionDelete?.call(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult Function(int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionDelete != null) {
      return sessionDelete(id, jsonrpc, method, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionPropose value) sessionPropose,
    required TResult Function(SessionSettle value) sessionSettle,
    required TResult Function(SessionRequest value) sessionRequest,
    required TResult Function(SessionDelete value) sessionDelete,
    required TResult Function(SessionPing value) sessionPing,
    required TResult Function(SessionEvent value) sessionEvent,
    required TResult Function(SessionUpdate value) sessionUpdate,
    required TResult Function(SessionExtend value) sessionExtend,
  }) {
    return sessionDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionPropose value)? sessionPropose,
    TResult? Function(SessionSettle value)? sessionSettle,
    TResult? Function(SessionRequest value)? sessionRequest,
    TResult? Function(SessionDelete value)? sessionDelete,
    TResult? Function(SessionPing value)? sessionPing,
    TResult? Function(SessionEvent value)? sessionEvent,
    TResult? Function(SessionUpdate value)? sessionUpdate,
    TResult? Function(SessionExtend value)? sessionExtend,
  }) {
    return sessionDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionPropose value)? sessionPropose,
    TResult Function(SessionSettle value)? sessionSettle,
    TResult Function(SessionRequest value)? sessionRequest,
    TResult Function(SessionDelete value)? sessionDelete,
    TResult Function(SessionPing value)? sessionPing,
    TResult Function(SessionEvent value)? sessionEvent,
    TResult Function(SessionUpdate value)? sessionUpdate,
    TResult Function(SessionExtend value)? sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionDelete != null) {
      return sessionDelete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDeleteToJson(
      this,
    );
  }
}

abstract class SessionDelete implements SignRpc {
  const factory SessionDelete(
      {required final int id,
      final String jsonrpc,
      final String method,
      required final DeleteParams params}) = _$SessionDelete;

  factory SessionDelete.fromJson(Map<String, dynamic> json) =
      _$SessionDelete.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  DeleteParams get params;
  @override
  @JsonKey(ignore: true)
  _$$SessionDeleteCopyWith<_$SessionDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionPingCopyWith<$Res> implements $SignRpcCopyWith<$Res> {
  factory _$$SessionPingCopyWith(
          _$SessionPing value, $Res Function(_$SessionPing) then) =
      __$$SessionPingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String jsonrpc, String method, PingParams params});
}

/// @nodoc
class __$$SessionPingCopyWithImpl<$Res>
    extends _$SignRpcCopyWithImpl<$Res, _$SessionPing>
    implements _$$SessionPingCopyWith<$Res> {
  __$$SessionPingCopyWithImpl(
      _$SessionPing _value, $Res Function(_$SessionPing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$SessionPing(
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
              as PingParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionPing implements SessionPing {
  const _$SessionPing(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      this.method = JsonRpcMethod.wcSessionPing,
      required this.params,
      final String? $type})
      : $type = $type ?? 'sessionPing';

  factory _$SessionPing.fromJson(Map<String, dynamic> json) =>
      _$$SessionPingFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  @JsonKey()
  final String method;
  @override
  final PingParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignRpc.sessionPing(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionPing &&
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
  _$$SessionPingCopyWith<_$SessionPing> get copyWith =>
      __$$SessionPingCopyWithImpl<_$SessionPing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)
        sessionPropose,
    required TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)
        sessionSettle,
    required TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)
        sessionRequest,
    required TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)
        sessionDelete,
    required TResult Function(
            int id, String jsonrpc, String method, PingParams params)
        sessionPing,
    required TResult Function(
            int id, String jsonrpc, String method, EventParams params)
        sessionEvent,
    required TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)
        sessionUpdate,
    required TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)
        sessionExtend,
  }) {
    return sessionPing(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult? Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult? Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult? Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult? Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult? Function(
            int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult? Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult? Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
  }) {
    return sessionPing?.call(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult Function(int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionPing != null) {
      return sessionPing(id, jsonrpc, method, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionPropose value) sessionPropose,
    required TResult Function(SessionSettle value) sessionSettle,
    required TResult Function(SessionRequest value) sessionRequest,
    required TResult Function(SessionDelete value) sessionDelete,
    required TResult Function(SessionPing value) sessionPing,
    required TResult Function(SessionEvent value) sessionEvent,
    required TResult Function(SessionUpdate value) sessionUpdate,
    required TResult Function(SessionExtend value) sessionExtend,
  }) {
    return sessionPing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionPropose value)? sessionPropose,
    TResult? Function(SessionSettle value)? sessionSettle,
    TResult? Function(SessionRequest value)? sessionRequest,
    TResult? Function(SessionDelete value)? sessionDelete,
    TResult? Function(SessionPing value)? sessionPing,
    TResult? Function(SessionEvent value)? sessionEvent,
    TResult? Function(SessionUpdate value)? sessionUpdate,
    TResult? Function(SessionExtend value)? sessionExtend,
  }) {
    return sessionPing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionPropose value)? sessionPropose,
    TResult Function(SessionSettle value)? sessionSettle,
    TResult Function(SessionRequest value)? sessionRequest,
    TResult Function(SessionDelete value)? sessionDelete,
    TResult Function(SessionPing value)? sessionPing,
    TResult Function(SessionEvent value)? sessionEvent,
    TResult Function(SessionUpdate value)? sessionUpdate,
    TResult Function(SessionExtend value)? sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionPing != null) {
      return sessionPing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionPingToJson(
      this,
    );
  }
}

abstract class SessionPing implements SignRpc {
  const factory SessionPing(
      {required final int id,
      final String jsonrpc,
      final String method,
      required final PingParams params}) = _$SessionPing;

  factory SessionPing.fromJson(Map<String, dynamic> json) =
      _$SessionPing.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  PingParams get params;
  @override
  @JsonKey(ignore: true)
  _$$SessionPingCopyWith<_$SessionPing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionEventCopyWith<$Res> implements $SignRpcCopyWith<$Res> {
  factory _$$SessionEventCopyWith(
          _$SessionEvent value, $Res Function(_$SessionEvent) then) =
      __$$SessionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String jsonrpc, String method, EventParams params});
}

/// @nodoc
class __$$SessionEventCopyWithImpl<$Res>
    extends _$SignRpcCopyWithImpl<$Res, _$SessionEvent>
    implements _$$SessionEventCopyWith<$Res> {
  __$$SessionEventCopyWithImpl(
      _$SessionEvent _value, $Res Function(_$SessionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$SessionEvent(
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
              as EventParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionEvent implements SessionEvent {
  const _$SessionEvent(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      this.method = JsonRpcMethod.wcSessionEvent,
      required this.params,
      final String? $type})
      : $type = $type ?? 'sessionEvent';

  factory _$SessionEvent.fromJson(Map<String, dynamic> json) =>
      _$$SessionEventFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  @JsonKey()
  final String method;
  @override
  final EventParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignRpc.sessionEvent(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionEvent &&
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
  _$$SessionEventCopyWith<_$SessionEvent> get copyWith =>
      __$$SessionEventCopyWithImpl<_$SessionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)
        sessionPropose,
    required TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)
        sessionSettle,
    required TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)
        sessionRequest,
    required TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)
        sessionDelete,
    required TResult Function(
            int id, String jsonrpc, String method, PingParams params)
        sessionPing,
    required TResult Function(
            int id, String jsonrpc, String method, EventParams params)
        sessionEvent,
    required TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)
        sessionUpdate,
    required TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)
        sessionExtend,
  }) {
    return sessionEvent(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult? Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult? Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult? Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult? Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult? Function(
            int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult? Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult? Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
  }) {
    return sessionEvent?.call(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult Function(int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionEvent != null) {
      return sessionEvent(id, jsonrpc, method, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionPropose value) sessionPropose,
    required TResult Function(SessionSettle value) sessionSettle,
    required TResult Function(SessionRequest value) sessionRequest,
    required TResult Function(SessionDelete value) sessionDelete,
    required TResult Function(SessionPing value) sessionPing,
    required TResult Function(SessionEvent value) sessionEvent,
    required TResult Function(SessionUpdate value) sessionUpdate,
    required TResult Function(SessionExtend value) sessionExtend,
  }) {
    return sessionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionPropose value)? sessionPropose,
    TResult? Function(SessionSettle value)? sessionSettle,
    TResult? Function(SessionRequest value)? sessionRequest,
    TResult? Function(SessionDelete value)? sessionDelete,
    TResult? Function(SessionPing value)? sessionPing,
    TResult? Function(SessionEvent value)? sessionEvent,
    TResult? Function(SessionUpdate value)? sessionUpdate,
    TResult? Function(SessionExtend value)? sessionExtend,
  }) {
    return sessionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionPropose value)? sessionPropose,
    TResult Function(SessionSettle value)? sessionSettle,
    TResult Function(SessionRequest value)? sessionRequest,
    TResult Function(SessionDelete value)? sessionDelete,
    TResult Function(SessionPing value)? sessionPing,
    TResult Function(SessionEvent value)? sessionEvent,
    TResult Function(SessionUpdate value)? sessionUpdate,
    TResult Function(SessionExtend value)? sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionEvent != null) {
      return sessionEvent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionEventToJson(
      this,
    );
  }
}

abstract class SessionEvent implements SignRpc {
  const factory SessionEvent(
      {required final int id,
      final String jsonrpc,
      final String method,
      required final EventParams params}) = _$SessionEvent;

  factory SessionEvent.fromJson(Map<String, dynamic> json) =
      _$SessionEvent.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  EventParams get params;
  @override
  @JsonKey(ignore: true)
  _$$SessionEventCopyWith<_$SessionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionUpdateCopyWith<$Res>
    implements $SignRpcCopyWith<$Res> {
  factory _$$SessionUpdateCopyWith(
          _$SessionUpdate value, $Res Function(_$SessionUpdate) then) =
      __$$SessionUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String jsonrpc, String method, UpdateNamespacesParams params});
}

/// @nodoc
class __$$SessionUpdateCopyWithImpl<$Res>
    extends _$SignRpcCopyWithImpl<$Res, _$SessionUpdate>
    implements _$$SessionUpdateCopyWith<$Res> {
  __$$SessionUpdateCopyWithImpl(
      _$SessionUpdate _value, $Res Function(_$SessionUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$SessionUpdate(
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
              as UpdateNamespacesParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionUpdate implements SessionUpdate {
  const _$SessionUpdate(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      this.method = JsonRpcMethod.wcSessionUpdate,
      required this.params,
      final String? $type})
      : $type = $type ?? 'sessionUpdate';

  factory _$SessionUpdate.fromJson(Map<String, dynamic> json) =>
      _$$SessionUpdateFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  @JsonKey()
  final String method;
  @override
  final UpdateNamespacesParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignRpc.sessionUpdate(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionUpdate &&
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
  _$$SessionUpdateCopyWith<_$SessionUpdate> get copyWith =>
      __$$SessionUpdateCopyWithImpl<_$SessionUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)
        sessionPropose,
    required TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)
        sessionSettle,
    required TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)
        sessionRequest,
    required TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)
        sessionDelete,
    required TResult Function(
            int id, String jsonrpc, String method, PingParams params)
        sessionPing,
    required TResult Function(
            int id, String jsonrpc, String method, EventParams params)
        sessionEvent,
    required TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)
        sessionUpdate,
    required TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)
        sessionExtend,
  }) {
    return sessionUpdate(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult? Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult? Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult? Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult? Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult? Function(
            int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult? Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult? Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
  }) {
    return sessionUpdate?.call(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult Function(int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionUpdate != null) {
      return sessionUpdate(id, jsonrpc, method, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionPropose value) sessionPropose,
    required TResult Function(SessionSettle value) sessionSettle,
    required TResult Function(SessionRequest value) sessionRequest,
    required TResult Function(SessionDelete value) sessionDelete,
    required TResult Function(SessionPing value) sessionPing,
    required TResult Function(SessionEvent value) sessionEvent,
    required TResult Function(SessionUpdate value) sessionUpdate,
    required TResult Function(SessionExtend value) sessionExtend,
  }) {
    return sessionUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionPropose value)? sessionPropose,
    TResult? Function(SessionSettle value)? sessionSettle,
    TResult? Function(SessionRequest value)? sessionRequest,
    TResult? Function(SessionDelete value)? sessionDelete,
    TResult? Function(SessionPing value)? sessionPing,
    TResult? Function(SessionEvent value)? sessionEvent,
    TResult? Function(SessionUpdate value)? sessionUpdate,
    TResult? Function(SessionExtend value)? sessionExtend,
  }) {
    return sessionUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionPropose value)? sessionPropose,
    TResult Function(SessionSettle value)? sessionSettle,
    TResult Function(SessionRequest value)? sessionRequest,
    TResult Function(SessionDelete value)? sessionDelete,
    TResult Function(SessionPing value)? sessionPing,
    TResult Function(SessionEvent value)? sessionEvent,
    TResult Function(SessionUpdate value)? sessionUpdate,
    TResult Function(SessionExtend value)? sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionUpdate != null) {
      return sessionUpdate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionUpdateToJson(
      this,
    );
  }
}

abstract class SessionUpdate implements SignRpc {
  const factory SessionUpdate(
      {required final int id,
      final String jsonrpc,
      final String method,
      required final UpdateNamespacesParams params}) = _$SessionUpdate;

  factory SessionUpdate.fromJson(Map<String, dynamic> json) =
      _$SessionUpdate.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  UpdateNamespacesParams get params;
  @override
  @JsonKey(ignore: true)
  _$$SessionUpdateCopyWith<_$SessionUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionExtendCopyWith<$Res>
    implements $SignRpcCopyWith<$Res> {
  factory _$$SessionExtendCopyWith(
          _$SessionExtend value, $Res Function(_$SessionExtend) then) =
      __$$SessionExtendCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String jsonrpc, String method, ExtendParams params});
}

/// @nodoc
class __$$SessionExtendCopyWithImpl<$Res>
    extends _$SignRpcCopyWithImpl<$Res, _$SessionExtend>
    implements _$$SessionExtendCopyWith<$Res> {
  __$$SessionExtendCopyWithImpl(
      _$SessionExtend _value, $Res Function(_$SessionExtend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$SessionExtend(
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
              as ExtendParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionExtend implements SessionExtend {
  const _$SessionExtend(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      this.method = JsonRpcMethod.wcSessionExtend,
      required this.params,
      final String? $type})
      : $type = $type ?? 'sessionExtend';

  factory _$SessionExtend.fromJson(Map<String, dynamic> json) =>
      _$$SessionExtendFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  @JsonKey()
  final String method;
  @override
  final ExtendParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignRpc.sessionExtend(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionExtend &&
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
  _$$SessionExtendCopyWith<_$SessionExtend> get copyWith =>
      __$$SessionExtendCopyWithImpl<_$SessionExtend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)
        sessionPropose,
    required TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)
        sessionSettle,
    required TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)
        sessionRequest,
    required TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)
        sessionDelete,
    required TResult Function(
            int id, String jsonrpc, String method, PingParams params)
        sessionPing,
    required TResult Function(
            int id, String jsonrpc, String method, EventParams params)
        sessionEvent,
    required TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)
        sessionUpdate,
    required TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)
        sessionExtend,
  }) {
    return sessionExtend(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult? Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult? Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult? Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult? Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult? Function(
            int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult? Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult? Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
  }) {
    return sessionExtend?.call(id, jsonrpc, method, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id, String jsonrpc, String method, SessionProposeParams params)?
        sessionPropose,
    TResult Function(
            int id, String jsonrpc, String method, SessionSettleParams params)?
        sessionSettle,
    TResult Function(
            int id, String jsonrpc, String method, SessionRequestParams params)?
        sessionRequest,
    TResult Function(
            int id, String jsonrpc, String method, DeleteParams params)?
        sessionDelete,
    TResult Function(int id, String jsonrpc, String method, PingParams params)?
        sessionPing,
    TResult Function(int id, String jsonrpc, String method, EventParams params)?
        sessionEvent,
    TResult Function(int id, String jsonrpc, String method,
            UpdateNamespacesParams params)?
        sessionUpdate,
    TResult Function(
            int id, String jsonrpc, String method, ExtendParams params)?
        sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionExtend != null) {
      return sessionExtend(id, jsonrpc, method, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionPropose value) sessionPropose,
    required TResult Function(SessionSettle value) sessionSettle,
    required TResult Function(SessionRequest value) sessionRequest,
    required TResult Function(SessionDelete value) sessionDelete,
    required TResult Function(SessionPing value) sessionPing,
    required TResult Function(SessionEvent value) sessionEvent,
    required TResult Function(SessionUpdate value) sessionUpdate,
    required TResult Function(SessionExtend value) sessionExtend,
  }) {
    return sessionExtend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionPropose value)? sessionPropose,
    TResult? Function(SessionSettle value)? sessionSettle,
    TResult? Function(SessionRequest value)? sessionRequest,
    TResult? Function(SessionDelete value)? sessionDelete,
    TResult? Function(SessionPing value)? sessionPing,
    TResult? Function(SessionEvent value)? sessionEvent,
    TResult? Function(SessionUpdate value)? sessionUpdate,
    TResult? Function(SessionExtend value)? sessionExtend,
  }) {
    return sessionExtend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionPropose value)? sessionPropose,
    TResult Function(SessionSettle value)? sessionSettle,
    TResult Function(SessionRequest value)? sessionRequest,
    TResult Function(SessionDelete value)? sessionDelete,
    TResult Function(SessionPing value)? sessionPing,
    TResult Function(SessionEvent value)? sessionEvent,
    TResult Function(SessionUpdate value)? sessionUpdate,
    TResult Function(SessionExtend value)? sessionExtend,
    required TResult orElse(),
  }) {
    if (sessionExtend != null) {
      return sessionExtend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionExtendToJson(
      this,
    );
  }
}

abstract class SessionExtend implements SignRpc {
  const factory SessionExtend(
      {required final int id,
      final String jsonrpc,
      final String method,
      required final ExtendParams params}) = _$SessionExtend;

  factory SessionExtend.fromJson(Map<String, dynamic> json) =
      _$SessionExtend.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  ExtendParams get params;
  @override
  @JsonKey(ignore: true)
  _$$SessionExtendCopyWith<_$SessionExtend> get copyWith =>
      throw _privateConstructorUsedError;
}
