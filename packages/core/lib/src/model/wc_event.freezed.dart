// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WCEvent<T> {
  String get name => throw _privateConstructorUsedError;
  T get payload => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WCEventCopyWith<T, WCEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WCEventCopyWith<T, $Res> {
  factory $WCEventCopyWith(WCEvent<T> value, $Res Function(WCEvent<T>) then) =
      _$WCEventCopyWithImpl<T, $Res, WCEvent<T>>;
  @useResult
  $Res call({String name, T payload});
}

/// @nodoc
class _$WCEventCopyWithImpl<T, $Res, $Val extends WCEvent<T>>
    implements $WCEventCopyWith<T, $Res> {
  _$WCEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WCEventCopyWith<T, $Res>
    implements $WCEventCopyWith<T, $Res> {
  factory _$$_WCEventCopyWith(
          _$_WCEvent<T> value, $Res Function(_$_WCEvent<T>) then) =
      __$$_WCEventCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String name, T payload});
}

/// @nodoc
class __$$_WCEventCopyWithImpl<T, $Res>
    extends _$WCEventCopyWithImpl<T, $Res, _$_WCEvent<T>>
    implements _$$_WCEventCopyWith<T, $Res> {
  __$$_WCEventCopyWithImpl(
      _$_WCEvent<T> _value, $Res Function(_$_WCEvent<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? payload = freezed,
  }) {
    return _then(_$_WCEvent<T>(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_WCEvent<T> implements _WCEvent<T> {
  const _$_WCEvent(this.name, this.payload);

  @override
  final String name;
  @override
  final T payload;

  @override
  String toString() {
    return 'WCEvent<$T>(name: $name, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WCEvent<T> &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WCEventCopyWith<T, _$_WCEvent<T>> get copyWith =>
      __$$_WCEventCopyWithImpl<T, _$_WCEvent<T>>(this, _$identity);
}

abstract class _WCEvent<T> implements WCEvent<T> {
  const factory _WCEvent(final String name, final T payload) = _$_WCEvent<T>;

  @override
  String get name;
  @override
  T get payload;
  @override
  @JsonKey(ignore: true)
  _$$_WCEventCopyWith<T, _$_WCEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
