// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pending_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PendingRequest _$PendingRequestFromJson(Map<String, dynamic> json) {
  return _PendingRequest.fromJson(json);
}

/// @nodoc
mixin _$PendingRequest {
  int get id => throw _privateConstructorUsedError;
  PayloadParams get payloadParams => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendingRequestCopyWith<PendingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingRequestCopyWith<$Res> {
  factory $PendingRequestCopyWith(
          PendingRequest value, $Res Function(PendingRequest) then) =
      _$PendingRequestCopyWithImpl<$Res, PendingRequest>;
  @useResult
  $Res call({int id, PayloadParams payloadParams, String message});

  $PayloadParamsCopyWith<$Res> get payloadParams;
}

/// @nodoc
class _$PendingRequestCopyWithImpl<$Res, $Val extends PendingRequest>
    implements $PendingRequestCopyWith<$Res> {
  _$PendingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payloadParams = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payloadParams: null == payloadParams
          ? _value.payloadParams
          : payloadParams // ignore: cast_nullable_to_non_nullable
              as PayloadParams,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadParamsCopyWith<$Res> get payloadParams {
    return $PayloadParamsCopyWith<$Res>(_value.payloadParams, (value) {
      return _then(_value.copyWith(payloadParams: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PendingRequestCopyWith<$Res>
    implements $PendingRequestCopyWith<$Res> {
  factory _$$_PendingRequestCopyWith(
          _$_PendingRequest value, $Res Function(_$_PendingRequest) then) =
      __$$_PendingRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, PayloadParams payloadParams, String message});

  @override
  $PayloadParamsCopyWith<$Res> get payloadParams;
}

/// @nodoc
class __$$_PendingRequestCopyWithImpl<$Res>
    extends _$PendingRequestCopyWithImpl<$Res, _$_PendingRequest>
    implements _$$_PendingRequestCopyWith<$Res> {
  __$$_PendingRequestCopyWithImpl(
      _$_PendingRequest _value, $Res Function(_$_PendingRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? payloadParams = null,
    Object? message = null,
  }) {
    return _then(_$_PendingRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      payloadParams: null == payloadParams
          ? _value.payloadParams
          : payloadParams // ignore: cast_nullable_to_non_nullable
              as PayloadParams,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PendingRequest implements _PendingRequest {
  const _$_PendingRequest(
      {required this.id, required this.payloadParams, required this.message});

  factory _$_PendingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PendingRequestFromJson(json);

  @override
  final int id;
  @override
  final PayloadParams payloadParams;
  @override
  final String message;

  @override
  String toString() {
    return 'PendingRequest(id: $id, payloadParams: $payloadParams, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PendingRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.payloadParams, payloadParams) ||
                other.payloadParams == payloadParams) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, payloadParams, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PendingRequestCopyWith<_$_PendingRequest> get copyWith =>
      __$$_PendingRequestCopyWithImpl<_$_PendingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PendingRequestToJson(
      this,
    );
  }
}

abstract class _PendingRequest implements PendingRequest {
  const factory _PendingRequest(
      {required final int id,
      required final PayloadParams payloadParams,
      required final String message}) = _$_PendingRequest;

  factory _PendingRequest.fromJson(Map<String, dynamic> json) =
      _$_PendingRequest.fromJson;

  @override
  int get id;
  @override
  PayloadParams get payloadParams;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_PendingRequestCopyWith<_$_PendingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
