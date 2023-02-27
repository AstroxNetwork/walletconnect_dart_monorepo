// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_meta_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppMetaData _$AppMetaDataFromJson(Map<String, dynamic> json) {
  return _AppMetaData.fromJson(json);
}

/// @nodoc
mixin _$AppMetaData {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<String> get icons => throw _privateConstructorUsedError;
  Redirect? get redirect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppMetaDataCopyWith<AppMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMetaDataCopyWith<$Res> {
  factory $AppMetaDataCopyWith(
          AppMetaData value, $Res Function(AppMetaData) then) =
      _$AppMetaDataCopyWithImpl<$Res, AppMetaData>;
  @useResult
  $Res call(
      {String name,
      String description,
      String url,
      List<String> icons,
      Redirect? redirect});

  $RedirectCopyWith<$Res>? get redirect;
}

/// @nodoc
class _$AppMetaDataCopyWithImpl<$Res, $Val extends AppMetaData>
    implements $AppMetaDataCopyWith<$Res> {
  _$AppMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? url = null,
    Object? icons = null,
    Object? redirect = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      redirect: freezed == redirect
          ? _value.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as Redirect?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RedirectCopyWith<$Res>? get redirect {
    if (_value.redirect == null) {
      return null;
    }

    return $RedirectCopyWith<$Res>(_value.redirect!, (value) {
      return _then(_value.copyWith(redirect: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppMetaDataCopyWith<$Res>
    implements $AppMetaDataCopyWith<$Res> {
  factory _$$_AppMetaDataCopyWith(
          _$_AppMetaData value, $Res Function(_$_AppMetaData) then) =
      __$$_AppMetaDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String url,
      List<String> icons,
      Redirect? redirect});

  @override
  $RedirectCopyWith<$Res>? get redirect;
}

/// @nodoc
class __$$_AppMetaDataCopyWithImpl<$Res>
    extends _$AppMetaDataCopyWithImpl<$Res, _$_AppMetaData>
    implements _$$_AppMetaDataCopyWith<$Res> {
  __$$_AppMetaDataCopyWithImpl(
      _$_AppMetaData _value, $Res Function(_$_AppMetaData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? url = null,
    Object? icons = null,
    Object? redirect = freezed,
  }) {
    return _then(_$_AppMetaData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      icons: null == icons
          ? _value._icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      redirect: freezed == redirect
          ? _value.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as Redirect?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppMetaData implements _AppMetaData {
  const _$_AppMetaData(
      {required this.name,
      required this.description,
      required this.url,
      required final List<String> icons,
      this.redirect})
      : _icons = icons;

  factory _$_AppMetaData.fromJson(Map<String, dynamic> json) =>
      _$$_AppMetaDataFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String url;
  final List<String> _icons;
  @override
  List<String> get icons {
    if (_icons is EqualUnmodifiableListView) return _icons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_icons);
  }

  @override
  final Redirect? redirect;

  @override
  String toString() {
    return 'AppMetaData(name: $name, description: $description, url: $url, icons: $icons, redirect: $redirect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppMetaData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._icons, _icons) &&
            (identical(other.redirect, redirect) ||
                other.redirect == redirect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, url,
      const DeepCollectionEquality().hash(_icons), redirect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppMetaDataCopyWith<_$_AppMetaData> get copyWith =>
      __$$_AppMetaDataCopyWithImpl<_$_AppMetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppMetaDataToJson(
      this,
    );
  }
}

abstract class _AppMetaData implements AppMetaData {
  const factory _AppMetaData(
      {required final String name,
      required final String description,
      required final String url,
      required final List<String> icons,
      final Redirect? redirect}) = _$_AppMetaData;

  factory _AppMetaData.fromJson(Map<String, dynamic> json) =
      _$_AppMetaData.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get url;
  @override
  List<String> get icons;
  @override
  Redirect? get redirect;
  @override
  @JsonKey(ignore: true)
  _$$_AppMetaDataCopyWith<_$_AppMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}
