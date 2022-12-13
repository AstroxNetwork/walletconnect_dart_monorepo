// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rpc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonRpcRequest<T> _$JsonRpcRequestFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _JsonRpcRequest<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$JsonRpcRequest<T> {
  int get id => throw _privateConstructorUsedError;
  String get jsonrpc => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  T get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonRpcRequestCopyWith<T, JsonRpcRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonRpcRequestCopyWith<T, $Res> {
  factory $JsonRpcRequestCopyWith(
          JsonRpcRequest<T> value, $Res Function(JsonRpcRequest<T>) then) =
      _$JsonRpcRequestCopyWithImpl<T, $Res, JsonRpcRequest<T>>;
  @useResult
  $Res call({int id, String jsonrpc, String method, T params});
}

/// @nodoc
class _$JsonRpcRequestCopyWithImpl<T, $Res, $Val extends JsonRpcRequest<T>>
    implements $JsonRpcRequestCopyWith<T, $Res> {
  _$JsonRpcRequestCopyWithImpl(this._value, this._then);

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
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JsonRpcRequestCopyWith<T, $Res>
    implements $JsonRpcRequestCopyWith<T, $Res> {
  factory _$$_JsonRpcRequestCopyWith(_$_JsonRpcRequest<T> value,
          $Res Function(_$_JsonRpcRequest<T>) then) =
      __$$_JsonRpcRequestCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int id, String jsonrpc, String method, T params});
}

/// @nodoc
class __$$_JsonRpcRequestCopyWithImpl<T, $Res>
    extends _$JsonRpcRequestCopyWithImpl<T, $Res, _$_JsonRpcRequest<T>>
    implements _$$_JsonRpcRequestCopyWith<T, $Res> {
  __$$_JsonRpcRequestCopyWithImpl(
      _$_JsonRpcRequest<T> _value, $Res Function(_$_JsonRpcRequest<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$_JsonRpcRequest<T>(
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
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_JsonRpcRequest<T> implements _JsonRpcRequest<T> {
  const _$_JsonRpcRequest(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      required this.method,
      required this.params});

  factory _$_JsonRpcRequest.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_JsonRpcRequestFromJson(json, fromJsonT);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  final String method;
  @override
  final T params;

  @override
  String toString() {
    return 'JsonRpcRequest<$T>(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JsonRpcRequest<T> &&
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
  _$$_JsonRpcRequestCopyWith<T, _$_JsonRpcRequest<T>> get copyWith =>
      __$$_JsonRpcRequestCopyWithImpl<T, _$_JsonRpcRequest<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_JsonRpcRequestToJson<T>(this, toJsonT);
  }
}

abstract class _JsonRpcRequest<T> implements JsonRpcRequest<T> {
  const factory _JsonRpcRequest(
      {required final int id,
      final String jsonrpc,
      required final String method,
      required final T params}) = _$_JsonRpcRequest<T>;

  factory _JsonRpcRequest.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_JsonRpcRequest<T>.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  @override
  String get method;
  @override
  T get params;
  @override
  @JsonKey(ignore: true)
  _$$_JsonRpcRequestCopyWith<T, _$_JsonRpcRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonRpcResponse<T> _$JsonRpcResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  switch (json['runtimeType']) {
    case 'result':
      return JsonRpcResult<T>.fromJson(json, fromJsonT);
    case 'error':
      return JsonRpcError<T>.fromJson(json, fromJsonT);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'JsonRpcResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$JsonRpcResponse<T> {
  int get id => throw _privateConstructorUsedError;
  String get jsonrpc => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String jsonrpc, T result) result,
    required TResult Function(int id, String jsonrpc, JsonRpcOnError error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String jsonrpc, T result)? result,
    TResult? Function(int id, String jsonrpc, JsonRpcOnError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String jsonrpc, T result)? result,
    TResult Function(int id, String jsonrpc, JsonRpcOnError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JsonRpcResult<T> value) result,
    required TResult Function(JsonRpcError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JsonRpcResult<T> value)? result,
    TResult? Function(JsonRpcError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JsonRpcResult<T> value)? result,
    TResult Function(JsonRpcError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonRpcResponseCopyWith<T, JsonRpcResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonRpcResponseCopyWith<T, $Res> {
  factory $JsonRpcResponseCopyWith(
          JsonRpcResponse<T> value, $Res Function(JsonRpcResponse<T>) then) =
      _$JsonRpcResponseCopyWithImpl<T, $Res, JsonRpcResponse<T>>;
  @useResult
  $Res call({int id, String jsonrpc});
}

/// @nodoc
class _$JsonRpcResponseCopyWithImpl<T, $Res, $Val extends JsonRpcResponse<T>>
    implements $JsonRpcResponseCopyWith<T, $Res> {
  _$JsonRpcResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JsonRpcResultCopyWith<T, $Res>
    implements $JsonRpcResponseCopyWith<T, $Res> {
  factory _$$JsonRpcResultCopyWith(
          _$JsonRpcResult<T> value, $Res Function(_$JsonRpcResult<T>) then) =
      __$$JsonRpcResultCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int id, String jsonrpc, T result});
}

/// @nodoc
class __$$JsonRpcResultCopyWithImpl<T, $Res>
    extends _$JsonRpcResponseCopyWithImpl<T, $Res, _$JsonRpcResult<T>>
    implements _$$JsonRpcResultCopyWith<T, $Res> {
  __$$JsonRpcResultCopyWithImpl(
      _$JsonRpcResult<T> _value, $Res Function(_$JsonRpcResult<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? result = null,
  }) {
    return _then(_$JsonRpcResult<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      jsonrpc: null == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$JsonRpcResult<T> implements JsonRpcResult<T> {
  const _$JsonRpcResult(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      required this.result,
      final String? $type})
      : $type = $type ?? 'result';

  factory _$JsonRpcResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$JsonRpcResultFromJson(json, fromJsonT);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  final T result;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'JsonRpcResponse<$T>.result(id: $id, jsonrpc: $jsonrpc, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonRpcResult<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, jsonrpc, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonRpcResultCopyWith<T, _$JsonRpcResult<T>> get copyWith =>
      __$$JsonRpcResultCopyWithImpl<T, _$JsonRpcResult<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String jsonrpc, T result) result,
    required TResult Function(int id, String jsonrpc, JsonRpcOnError error)
        error,
  }) {
    return result(id, jsonrpc, this.result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String jsonrpc, T result)? result,
    TResult? Function(int id, String jsonrpc, JsonRpcOnError error)? error,
  }) {
    return result?.call(id, jsonrpc, this.result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String jsonrpc, T result)? result,
    TResult Function(int id, String jsonrpc, JsonRpcOnError error)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(id, jsonrpc, this.result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JsonRpcResult<T> value) result,
    required TResult Function(JsonRpcError<T> value) error,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JsonRpcResult<T> value)? result,
    TResult? Function(JsonRpcError<T> value)? error,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JsonRpcResult<T> value)? result,
    TResult Function(JsonRpcError<T> value)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$JsonRpcResultToJson<T>(this, toJsonT);
  }
}

abstract class JsonRpcResult<T> implements JsonRpcResponse<T> {
  const factory JsonRpcResult(
      {required final int id,
      final String jsonrpc,
      required final T result}) = _$JsonRpcResult<T>;

  factory JsonRpcResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$JsonRpcResult<T>.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  T get result;
  @override
  @JsonKey(ignore: true)
  _$$JsonRpcResultCopyWith<T, _$JsonRpcResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JsonRpcErrorCopyWith<T, $Res>
    implements $JsonRpcResponseCopyWith<T, $Res> {
  factory _$$JsonRpcErrorCopyWith(
          _$JsonRpcError<T> value, $Res Function(_$JsonRpcError<T>) then) =
      __$$JsonRpcErrorCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int id, String jsonrpc, JsonRpcOnError error});

  $JsonRpcOnErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$JsonRpcErrorCopyWithImpl<T, $Res>
    extends _$JsonRpcResponseCopyWithImpl<T, $Res, _$JsonRpcError<T>>
    implements _$$JsonRpcErrorCopyWith<T, $Res> {
  __$$JsonRpcErrorCopyWithImpl(
      _$JsonRpcError<T> _value, $Res Function(_$JsonRpcError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jsonrpc = null,
    Object? error = null,
  }) {
    return _then(_$JsonRpcError<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      jsonrpc: null == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as JsonRpcOnError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $JsonRpcOnErrorCopyWith<$Res> get error {
    return $JsonRpcOnErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$JsonRpcError<T> implements JsonRpcError<T> {
  const _$JsonRpcError(
      {required this.id,
      this.jsonrpc = jsonRpcVersion,
      required this.error,
      final String? $type})
      : $type = $type ?? 'error';

  factory _$JsonRpcError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$JsonRpcErrorFromJson(json, fromJsonT);

  @override
  final int id;
  @override
  @JsonKey()
  final String jsonrpc;
  @override
  final JsonRpcOnError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'JsonRpcResponse<$T>.error(id: $id, jsonrpc: $jsonrpc, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonRpcError<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, jsonrpc, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonRpcErrorCopyWith<T, _$JsonRpcError<T>> get copyWith =>
      __$$JsonRpcErrorCopyWithImpl<T, _$JsonRpcError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String jsonrpc, T result) result,
    required TResult Function(int id, String jsonrpc, JsonRpcOnError error)
        error,
  }) {
    return error(id, jsonrpc, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String jsonrpc, T result)? result,
    TResult? Function(int id, String jsonrpc, JsonRpcOnError error)? error,
  }) {
    return error?.call(id, jsonrpc, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String jsonrpc, T result)? result,
    TResult Function(int id, String jsonrpc, JsonRpcOnError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(id, jsonrpc, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JsonRpcResult<T> value) result,
    required TResult Function(JsonRpcError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JsonRpcResult<T> value)? result,
    TResult? Function(JsonRpcError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JsonRpcResult<T> value)? result,
    TResult Function(JsonRpcError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$JsonRpcErrorToJson<T>(this, toJsonT);
  }
}

abstract class JsonRpcError<T> implements JsonRpcResponse<T> {
  const factory JsonRpcError(
      {required final int id,
      final String jsonrpc,
      required final JsonRpcOnError error}) = _$JsonRpcError<T>;

  factory JsonRpcError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$JsonRpcError<T>.fromJson;

  @override
  int get id;
  @override
  String get jsonrpc;
  JsonRpcOnError get error;
  @override
  @JsonKey(ignore: true)
  _$$JsonRpcErrorCopyWith<T, _$JsonRpcError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonRpcOnError _$JsonRpcOnErrorFromJson(Map<String, dynamic> json) {
  return _JsonRpcOnError.fromJson(json);
}

/// @nodoc
mixin _$JsonRpcOnError {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonRpcOnErrorCopyWith<JsonRpcOnError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonRpcOnErrorCopyWith<$Res> {
  factory $JsonRpcOnErrorCopyWith(
          JsonRpcOnError value, $Res Function(JsonRpcOnError) then) =
      _$JsonRpcOnErrorCopyWithImpl<$Res, JsonRpcOnError>;
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class _$JsonRpcOnErrorCopyWithImpl<$Res, $Val extends JsonRpcOnError>
    implements $JsonRpcOnErrorCopyWith<$Res> {
  _$JsonRpcOnErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JsonRpcOnErrorCopyWith<$Res>
    implements $JsonRpcOnErrorCopyWith<$Res> {
  factory _$$_JsonRpcOnErrorCopyWith(
          _$_JsonRpcOnError value, $Res Function(_$_JsonRpcOnError) then) =
      __$$_JsonRpcOnErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class __$$_JsonRpcOnErrorCopyWithImpl<$Res>
    extends _$JsonRpcOnErrorCopyWithImpl<$Res, _$_JsonRpcOnError>
    implements _$$_JsonRpcOnErrorCopyWith<$Res> {
  __$$_JsonRpcOnErrorCopyWithImpl(
      _$_JsonRpcOnError _value, $Res Function(_$_JsonRpcOnError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$_JsonRpcOnError(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonRpcOnError implements _JsonRpcOnError {
  const _$_JsonRpcOnError({required this.code, required this.message});

  factory _$_JsonRpcOnError.fromJson(Map<String, dynamic> json) =>
      _$$_JsonRpcOnErrorFromJson(json);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'JsonRpcOnError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JsonRpcOnError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JsonRpcOnErrorCopyWith<_$_JsonRpcOnError> get copyWith =>
      __$$_JsonRpcOnErrorCopyWithImpl<_$_JsonRpcOnError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JsonRpcOnErrorToJson(
      this,
    );
  }
}

abstract class _JsonRpcOnError implements JsonRpcOnError {
  const factory _JsonRpcOnError(
      {required final int code,
      required final String message}) = _$_JsonRpcOnError;

  factory _JsonRpcOnError.fromJson(Map<String, dynamic> json) =
      _$_JsonRpcOnError.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_JsonRpcOnErrorCopyWith<_$_JsonRpcOnError> get copyWith =>
      throw _privateConstructorUsedError;
}
