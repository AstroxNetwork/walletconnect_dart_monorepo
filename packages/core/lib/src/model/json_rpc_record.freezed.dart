// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_rpc_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonRpcRecord _$JsonRpcRecordFromJson(Map<String, dynamic> json) {
  return _JsonRpcRecord.fromJson(json);
}

/// @nodoc
mixin _$JsonRpcRecord {
  int get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonRpcRecordCopyWith<JsonRpcRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonRpcRecordCopyWith<$Res> {
  factory $JsonRpcRecordCopyWith(
          JsonRpcRecord value, $Res Function(JsonRpcRecord) then) =
      _$JsonRpcRecordCopyWithImpl<$Res, JsonRpcRecord>;
  @useResult
  $Res call(
      {int id, String topic, String method, String body, String? response});
}

/// @nodoc
class _$JsonRpcRecordCopyWithImpl<$Res, $Val extends JsonRpcRecord>
    implements $JsonRpcRecordCopyWith<$Res> {
  _$JsonRpcRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? method = null,
    Object? body = null,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JsonRpcRecordCopyWith<$Res>
    implements $JsonRpcRecordCopyWith<$Res> {
  factory _$$_JsonRpcRecordCopyWith(
          _$_JsonRpcRecord value, $Res Function(_$_JsonRpcRecord) then) =
      __$$_JsonRpcRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String topic, String method, String body, String? response});
}

/// @nodoc
class __$$_JsonRpcRecordCopyWithImpl<$Res>
    extends _$JsonRpcRecordCopyWithImpl<$Res, _$_JsonRpcRecord>
    implements _$$_JsonRpcRecordCopyWith<$Res> {
  __$$_JsonRpcRecordCopyWithImpl(
      _$_JsonRpcRecord _value, $Res Function(_$_JsonRpcRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? method = null,
    Object? body = null,
    Object? response = freezed,
  }) {
    return _then(_$_JsonRpcRecord(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonRpcRecord implements _JsonRpcRecord {
  const _$_JsonRpcRecord(
      {required this.id,
      required this.topic,
      required this.method,
      required this.body,
      this.response});

  factory _$_JsonRpcRecord.fromJson(Map<String, dynamic> json) =>
      _$$_JsonRpcRecordFromJson(json);

  @override
  final int id;
  @override
  final String topic;
  @override
  final String method;
  @override
  final String body;
  @override
  final String? response;

  @override
  String toString() {
    return 'JsonRpcRecord(id: $id, topic: $topic, method: $method, body: $body, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JsonRpcRecord &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, topic, method, body, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JsonRpcRecordCopyWith<_$_JsonRpcRecord> get copyWith =>
      __$$_JsonRpcRecordCopyWithImpl<_$_JsonRpcRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JsonRpcRecordToJson(
      this,
    );
  }
}

abstract class _JsonRpcRecord implements JsonRpcRecord {
  const factory _JsonRpcRecord(
      {required final int id,
      required final String topic,
      required final String method,
      required final String body,
      final String? response}) = _$_JsonRpcRecord;

  factory _JsonRpcRecord.fromJson(Map<String, dynamic> json) =
      _$_JsonRpcRecord.fromJson;

  @override
  int get id;
  @override
  String get topic;
  @override
  String get method;
  @override
  String get body;
  @override
  String? get response;
  @override
  @JsonKey(ignore: true)
  _$$_JsonRpcRecordCopyWith<_$_JsonRpcRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
