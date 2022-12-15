// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      return DeleteParams.fromJson(json);
    case 'ping':
      return PingParams.fromJson(json);

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
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
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
abstract class _$$DeleteParamsCopyWith<$Res> {
  factory _$$DeleteParamsCopyWith(
          _$DeleteParams value, $Res Function(_$DeleteParams) then) =
      __$$DeleteParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class __$$DeleteParamsCopyWithImpl<$Res>
    extends _$PairingParamsCopyWithImpl<$Res, _$DeleteParams>
    implements _$$DeleteParamsCopyWith<$Res> {
  __$$DeleteParamsCopyWithImpl(
      _$DeleteParams _value, $Res Function(_$DeleteParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$DeleteParams(
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
class _$DeleteParams implements DeleteParams {
  const _$DeleteParams(
      {this.code = -1, required this.message, final String? $type})
      : $type = $type ?? 'delete';

  factory _$DeleteParams.fromJson(Map<String, dynamic> json) =>
      _$$DeleteParamsFromJson(json);

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
            other is _$DeleteParams &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteParamsCopyWith<_$DeleteParams> get copyWith =>
      __$$DeleteParamsCopyWithImpl<_$DeleteParams>(this, _$identity);

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
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteParamsToJson(
      this,
    );
  }
}

abstract class DeleteParams implements PairingParams {
  const factory DeleteParams({final int code, required final String message}) =
      _$DeleteParams;

  factory DeleteParams.fromJson(Map<String, dynamic> json) =
      _$DeleteParams.fromJson;

  int get code;
  String get message;
  @JsonKey(ignore: true)
  _$$DeleteParamsCopyWith<_$DeleteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PingParamsCopyWith<$Res> {
  factory _$$PingParamsCopyWith(
          _$PingParams value, $Res Function(_$PingParams) then) =
      __$$PingParamsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PingParamsCopyWithImpl<$Res>
    extends _$PairingParamsCopyWithImpl<$Res, _$PingParams>
    implements _$$PingParamsCopyWith<$Res> {
  __$$PingParamsCopyWithImpl(
      _$PingParams _value, $Res Function(_$PingParams) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PingParams implements PingParams {
  const _$PingParams({final String? $type}) : $type = $type ?? 'ping';

  factory _$PingParams.fromJson(Map<String, dynamic> json) =>
      _$$PingParamsFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PairingParams.ping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PingParams);
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
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return ping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return ping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PingParamsToJson(
      this,
    );
  }
}

abstract class PingParams implements PairingParams {
  const factory PingParams() = _$PingParams;

  factory PingParams.fromJson(Map<String, dynamic> json) =
      _$PingParams.fromJson;
}
