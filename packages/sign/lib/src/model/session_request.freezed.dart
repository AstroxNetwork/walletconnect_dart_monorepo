// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionRequest _$SessionRequestFromJson(Map<String, dynamic> json) {
  return _SessionRequest.fromJson(json);
}

/// @nodoc
mixin _$SessionRequest {
  String get method => throw _privateConstructorUsedError;
  String get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionRequestCopyWith<SessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionRequestCopyWith<$Res> {
  factory $SessionRequestCopyWith(
          SessionRequest value, $Res Function(SessionRequest) then) =
      _$SessionRequestCopyWithImpl<$Res, SessionRequest>;
  @useResult
  $Res call({String method, String params});
}

/// @nodoc
class _$SessionRequestCopyWithImpl<$Res, $Val extends SessionRequest>
    implements $SessionRequestCopyWith<$Res> {
  _$SessionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionRequestCopyWith<$Res>
    implements $SessionRequestCopyWith<$Res> {
  factory _$$_SessionRequestCopyWith(
          _$_SessionRequest value, $Res Function(_$_SessionRequest) then) =
      __$$_SessionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String method, String params});
}

/// @nodoc
class __$$_SessionRequestCopyWithImpl<$Res>
    extends _$SessionRequestCopyWithImpl<$Res, _$_SessionRequest>
    implements _$$_SessionRequestCopyWith<$Res> {
  __$$_SessionRequestCopyWithImpl(
      _$_SessionRequest _value, $Res Function(_$_SessionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$_SessionRequest(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionRequest implements _SessionRequest {
  const _$_SessionRequest({required this.method, required this.params});

  factory _$_SessionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SessionRequestFromJson(json);

  @override
  final String method;
  @override
  final String params;

  @override
  String toString() {
    return 'SessionRequest(method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionRequest &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, method, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionRequestCopyWith<_$_SessionRequest> get copyWith =>
      __$$_SessionRequestCopyWithImpl<_$_SessionRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionRequestToJson(
      this,
    );
  }
}

abstract class _SessionRequest implements SessionRequest {
  const factory _SessionRequest(
      {required final String method,
      required final String params}) = _$_SessionRequest;

  factory _SessionRequest.fromJson(Map<String, dynamic> json) =
      _$_SessionRequest.fromJson;

  @override
  String get method;
  @override
  String get params;
  @override
  @JsonKey(ignore: true)
  _$$_SessionRequestCopyWith<_$_SessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
