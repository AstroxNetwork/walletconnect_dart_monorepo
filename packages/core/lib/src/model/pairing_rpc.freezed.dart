// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pairing_rpc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PairingParams _$PairingParamsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'delete':
      return PairingDeleteParams.fromJson(json);
    case 'ping':
      return PairingPingParams.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PairingParams',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PairingParams {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PairingDeleteParams value) delete,
    required TResult Function(PairingPingParams value) ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PairingDeleteParams value)? delete,
    TResult? Function(PairingPingParams value)? ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PairingDeleteParams value)? delete,
    TResult Function(PairingPingParams value)? ping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairingParamsCopyWith<$Res> {
  factory $PairingParamsCopyWith(
          PairingParams value, $Res Function(PairingParams) then) =
      _$PairingParamsCopyWithImpl<$Res, PairingParams>;
}

/// @nodoc
class _$PairingParamsCopyWithImpl<$Res, $Val extends PairingParams>
    implements $PairingParamsCopyWith<$Res> {
  _$PairingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PairingDeleteParamsCopyWith<$Res> {
  factory _$$PairingDeleteParamsCopyWith(_$PairingDeleteParams value,
          $Res Function(_$PairingDeleteParams) then) =
      __$$PairingDeleteParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class __$$PairingDeleteParamsCopyWithImpl<$Res>
    extends _$PairingParamsCopyWithImpl<$Res, _$PairingDeleteParams>
    implements _$$PairingDeleteParamsCopyWith<$Res> {
  __$$PairingDeleteParamsCopyWithImpl(
      _$PairingDeleteParams _value, $Res Function(_$PairingDeleteParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$PairingDeleteParams(
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
class _$PairingDeleteParams implements PairingDeleteParams {
  const _$PairingDeleteParams(
      {this.code = -1, required this.message, final String? $type})
      : $type = $type ?? 'delete';

  factory _$PairingDeleteParams.fromJson(Map<String, dynamic> json) =>
      _$$PairingDeleteParamsFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PairingParams.delete(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PairingDeleteParams &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PairingDeleteParamsCopyWith<_$PairingDeleteParams> get copyWith =>
      __$$PairingDeleteParamsCopyWithImpl<_$PairingDeleteParams>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return delete(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return delete?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PairingDeleteParams value) delete,
    required TResult Function(PairingPingParams value) ping,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PairingDeleteParams value)? delete,
    TResult? Function(PairingPingParams value)? ping,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PairingDeleteParams value)? delete,
    TResult Function(PairingPingParams value)? ping,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PairingDeleteParamsToJson(
      this,
    );
  }
}

abstract class PairingDeleteParams implements PairingParams {
  const factory PairingDeleteParams(
      {final int code, required final String message}) = _$PairingDeleteParams;

  factory PairingDeleteParams.fromJson(Map<String, dynamic> json) =
      _$PairingDeleteParams.fromJson;

  int get code;
  String get message;
  @JsonKey(ignore: true)
  _$$PairingDeleteParamsCopyWith<_$PairingDeleteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PairingPingParamsCopyWith<$Res> {
  factory _$$PairingPingParamsCopyWith(
          _$PairingPingParams value, $Res Function(_$PairingPingParams) then) =
      __$$PairingPingParamsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PairingPingParamsCopyWithImpl<$Res>
    extends _$PairingParamsCopyWithImpl<$Res, _$PairingPingParams>
    implements _$$PairingPingParamsCopyWith<$Res> {
  __$$PairingPingParamsCopyWithImpl(
      _$PairingPingParams _value, $Res Function(_$PairingPingParams) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PairingPingParams implements PairingPingParams {
  const _$PairingPingParams({final String? $type}) : $type = $type ?? 'ping';

  factory _$PairingPingParams.fromJson(Map<String, dynamic> json) =>
      _$$PairingPingParamsFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PairingParams.ping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PairingPingParams);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return ping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return ping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PairingDeleteParams value) delete,
    required TResult Function(PairingPingParams value) ping,
  }) {
    return ping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PairingDeleteParams value)? delete,
    TResult? Function(PairingPingParams value)? ping,
  }) {
    return ping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PairingDeleteParams value)? delete,
    TResult Function(PairingPingParams value)? ping,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PairingPingParamsToJson(
      this,
    );
  }
}

abstract class PairingPingParams implements PairingParams {
  const factory PairingPingParams() = _$PairingPingParams;

  factory PairingPingParams.fromJson(Map<String, dynamic> json) =
      _$PairingPingParams.fromJson;
}
