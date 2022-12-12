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
  String get method => throw _privateConstructorUsedError;
  @TopicConverter()
  String get topic => throw _privateConstructorUsedError;
  String get params => throw _privateConstructorUsedError;

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
  $Res call(
      {int id, String method, @TopicConverter() String topic, String params});
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
    Object? method = null,
    Object? topic = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $Res call(
      {int id, String method, @TopicConverter() String topic, String params});
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
    Object? method = null,
    Object? topic = null,
    Object? params = null,
  }) {
    return _then(_$_PendingRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
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
class _$_PendingRequest implements _PendingRequest {
  const _$_PendingRequest(
      {required this.id,
      required this.method,
      @TopicConverter() required this.topic,
      required this.params});

  factory _$_PendingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PendingRequestFromJson(json);

  @override
  final int id;
  @override
  final String method;
  @override
  @TopicConverter()
  final String topic;
  @override
  final String params;

  @override
  String toString() {
    return 'PendingRequest(id: $id, method: $method, topic: $topic, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PendingRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, method, topic, params);

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
      required final String method,
      @TopicConverter() required final String topic,
      required final String params}) = _$_PendingRequest;

  factory _PendingRequest.fromJson(Map<String, dynamic> json) =
      _$_PendingRequest.fromJson;

  @override
  int get id;
  @override
  String get method;
  @override
  @TopicConverter()
  String get topic;
  @override
  String get params;
  @override
  @JsonKey(ignore: true)
  _$$_PendingRequestCopyWith<_$_PendingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
