// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'redirect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Redirect _$RedirectFromJson(Map<String, dynamic> json) {
  return _Redirect.fromJson(json);
}

/// @nodoc
mixin _$Redirect {
  String? get native => throw _privateConstructorUsedError;
  String? get universal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedirectCopyWith<Redirect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedirectCopyWith<$Res> {
  factory $RedirectCopyWith(Redirect value, $Res Function(Redirect) then) =
      _$RedirectCopyWithImpl<$Res, Redirect>;
  @useResult
  $Res call({String? native, String? universal});
}

/// @nodoc
class _$RedirectCopyWithImpl<$Res, $Val extends Redirect>
    implements $RedirectCopyWith<$Res> {
  _$RedirectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? native = freezed,
    Object? universal = freezed,
  }) {
    return _then(_value.copyWith(
      native: freezed == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String?,
      universal: freezed == universal
          ? _value.universal
          : universal // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RedirectCopyWith<$Res> implements $RedirectCopyWith<$Res> {
  factory _$$_RedirectCopyWith(
          _$_Redirect value, $Res Function(_$_Redirect) then) =
      __$$_RedirectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? native, String? universal});
}

/// @nodoc
class __$$_RedirectCopyWithImpl<$Res>
    extends _$RedirectCopyWithImpl<$Res, _$_Redirect>
    implements _$$_RedirectCopyWith<$Res> {
  __$$_RedirectCopyWithImpl(
      _$_Redirect _value, $Res Function(_$_Redirect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? native = freezed,
    Object? universal = freezed,
  }) {
    return _then(_$_Redirect(
      native: freezed == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String?,
      universal: freezed == universal
          ? _value.universal
          : universal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Redirect implements _Redirect {
  const _$_Redirect({this.native, this.universal});

  factory _$_Redirect.fromJson(Map<String, dynamic> json) =>
      _$$_RedirectFromJson(json);

  @override
  final String? native;
  @override
  final String? universal;

  @override
  String toString() {
    return 'Redirect(native: $native, universal: $universal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Redirect &&
            (identical(other.native, native) || other.native == native) &&
            (identical(other.universal, universal) ||
                other.universal == universal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, native, universal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RedirectCopyWith<_$_Redirect> get copyWith =>
      __$$_RedirectCopyWithImpl<_$_Redirect>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedirectToJson(
      this,
    );
  }
}

abstract class _Redirect implements Redirect {
  const factory _Redirect({final String? native, final String? universal}) =
      _$_Redirect;

  factory _Redirect.fromJson(Map<String, dynamic> json) = _$_Redirect.fromJson;

  @override
  String? get native;
  @override
  String? get universal;
  @override
  @JsonKey(ignore: true)
  _$$_RedirectCopyWith<_$_Redirect> get copyWith =>
      throw _privateConstructorUsedError;
}
