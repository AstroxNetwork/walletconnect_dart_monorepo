// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionEvent _$SessionEventFromJson(Map<String, dynamic> json) {
  return _SessionEvent.fromJson(json);
}

/// @nodoc
mixin _$SessionEvent {
  String get name => throw _privateConstructorUsedError;
  @ObjectConverter()
  Object get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionEventCopyWith<SessionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEventCopyWith<$Res> {
  factory $SessionEventCopyWith(
          SessionEvent value, $Res Function(SessionEvent) then) =
      _$SessionEventCopyWithImpl<$Res, SessionEvent>;
  @useResult
  $Res call({String name, @ObjectConverter() Object data});
}

/// @nodoc
class _$SessionEventCopyWithImpl<$Res, $Val extends SessionEvent>
    implements $SessionEventCopyWith<$Res> {
  _$SessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data ? _value.data : data,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionEventCopyWith<$Res>
    implements $SessionEventCopyWith<$Res> {
  factory _$$_SessionEventCopyWith(
          _$_SessionEvent value, $Res Function(_$_SessionEvent) then) =
      __$$_SessionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @ObjectConverter() Object data});
}

/// @nodoc
class __$$_SessionEventCopyWithImpl<$Res>
    extends _$SessionEventCopyWithImpl<$Res, _$_SessionEvent>
    implements _$$_SessionEventCopyWith<$Res> {
  __$$_SessionEventCopyWithImpl(
      _$_SessionEvent _value, $Res Function(_$_SessionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$_SessionEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data ? _value.data : data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionEvent implements _SessionEvent {
  const _$_SessionEvent(
      {required this.name, @ObjectConverter() required this.data});

  factory _$_SessionEvent.fromJson(Map<String, dynamic> json) =>
      _$$_SessionEventFromJson(json);

  @override
  final String name;
  @override
  @ObjectConverter()
  final Object data;

  @override
  String toString() {
    return 'SessionEvent(name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionEvent &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionEventCopyWith<_$_SessionEvent> get copyWith =>
      __$$_SessionEventCopyWithImpl<_$_SessionEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionEventToJson(
      this,
    );
  }
}

abstract class _SessionEvent implements SessionEvent {
  const factory _SessionEvent(
      {required final String name,
      @ObjectConverter() required final Object data}) = _$_SessionEvent;

  factory _SessionEvent.fromJson(Map<String, dynamic> json) =
      _$_SessionEvent.fromJson;

  @override
  String get name;
  @override
  @ObjectConverter()
  Object get data;
  @override
  @JsonKey(ignore: true)
  _$$_SessionEventCopyWith<_$_SessionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
