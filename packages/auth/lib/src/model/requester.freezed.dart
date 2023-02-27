// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requester.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Requester _$RequesterFromJson(Map<String, dynamic> json) {
  return _Requester.fromJson(json);
}

/// @nodoc
mixin _$Requester {
  String get publicKey => throw _privateConstructorUsedError;
  AppMetaData get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequesterCopyWith<Requester> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequesterCopyWith<$Res> {
  factory $RequesterCopyWith(Requester value, $Res Function(Requester) then) =
      _$RequesterCopyWithImpl<$Res, Requester>;
  @useResult
  $Res call({String publicKey, AppMetaData metadata});

  $AppMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$RequesterCopyWithImpl<$Res, $Val extends Requester>
    implements $RequesterCopyWith<$Res> {
  _$RequesterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as AppMetaData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetaDataCopyWith<$Res> get metadata {
    return $AppMetaDataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RequesterCopyWith<$Res> implements $RequesterCopyWith<$Res> {
  factory _$$_RequesterCopyWith(
          _$_Requester value, $Res Function(_$_Requester) then) =
      __$$_RequesterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKey, AppMetaData metadata});

  @override
  $AppMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$_RequesterCopyWithImpl<$Res>
    extends _$RequesterCopyWithImpl<$Res, _$_Requester>
    implements _$$_RequesterCopyWith<$Res> {
  __$$_RequesterCopyWithImpl(
      _$_Requester _value, $Res Function(_$_Requester) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? metadata = null,
  }) {
    return _then(_$_Requester(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as AppMetaData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Requester implements _Requester {
  const _$_Requester({required this.publicKey, required this.metadata});

  factory _$_Requester.fromJson(Map<String, dynamic> json) =>
      _$$_RequesterFromJson(json);

  @override
  final String publicKey;
  @override
  final AppMetaData metadata;

  @override
  String toString() {
    return 'Requester(publicKey: $publicKey, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Requester &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequesterCopyWith<_$_Requester> get copyWith =>
      __$$_RequesterCopyWithImpl<_$_Requester>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequesterToJson(
      this,
    );
  }
}

abstract class _Requester implements Requester {
  const factory _Requester(
      {required final String publicKey,
      required final AppMetaData metadata}) = _$_Requester;

  factory _Requester.fromJson(Map<String, dynamic> json) =
      _$_Requester.fromJson;

  @override
  String get publicKey;
  @override
  AppMetaData get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_RequesterCopyWith<_$_Requester> get copyWith =>
      throw _privateConstructorUsedError;
}
