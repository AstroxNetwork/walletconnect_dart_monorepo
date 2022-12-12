// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_proposer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionProposer _$SessionProposerFromJson(Map<String, dynamic> json) {
  return _SessionProposer.fromJson(json);
}

/// @nodoc
mixin _$SessionProposer {
  @Uint8ListToHexConverter()
  Uint8List get publicKey => throw _privateConstructorUsedError;
  AppMetaData get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionProposerCopyWith<SessionProposer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionProposerCopyWith<$Res> {
  factory $SessionProposerCopyWith(
          SessionProposer value, $Res Function(SessionProposer) then) =
      _$SessionProposerCopyWithImpl<$Res, SessionProposer>;
  @useResult
  $Res call(
      {@Uint8ListToHexConverter() Uint8List publicKey, AppMetaData metadata});

  $AppMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$SessionProposerCopyWithImpl<$Res, $Val extends SessionProposer>
    implements $SessionProposerCopyWith<$Res> {
  _$SessionProposerCopyWithImpl(this._value, this._then);

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
              as Uint8List,
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
abstract class _$$_SessionProposerCopyWith<$Res>
    implements $SessionProposerCopyWith<$Res> {
  factory _$$_SessionProposerCopyWith(
          _$_SessionProposer value, $Res Function(_$_SessionProposer) then) =
      __$$_SessionProposerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Uint8ListToHexConverter() Uint8List publicKey, AppMetaData metadata});

  @override
  $AppMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$_SessionProposerCopyWithImpl<$Res>
    extends _$SessionProposerCopyWithImpl<$Res, _$_SessionProposer>
    implements _$$_SessionProposerCopyWith<$Res> {
  __$$_SessionProposerCopyWithImpl(
      _$_SessionProposer _value, $Res Function(_$_SessionProposer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? metadata = null,
  }) {
    return _then(_$_SessionProposer(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as AppMetaData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionProposer implements _SessionProposer {
  const _$_SessionProposer(
      {@Uint8ListToHexConverter() required this.publicKey,
      required this.metadata});

  factory _$_SessionProposer.fromJson(Map<String, dynamic> json) =>
      _$$_SessionProposerFromJson(json);

  @override
  @Uint8ListToHexConverter()
  final Uint8List publicKey;
  @override
  final AppMetaData metadata;

  @override
  String toString() {
    return 'SessionProposer(publicKey: $publicKey, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionProposer &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(publicKey), metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionProposerCopyWith<_$_SessionProposer> get copyWith =>
      __$$_SessionProposerCopyWithImpl<_$_SessionProposer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionProposerToJson(
      this,
    );
  }
}

abstract class _SessionProposer implements SessionProposer {
  const factory _SessionProposer(
      {@Uint8ListToHexConverter() required final Uint8List publicKey,
      required final AppMetaData metadata}) = _$_SessionProposer;

  factory _SessionProposer.fromJson(Map<String, dynamic> json) =
      _$_SessionProposer.fromJson;

  @override
  @Uint8ListToHexConverter()
  Uint8List get publicKey;
  @override
  AppMetaData get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_SessionProposerCopyWith<_$_SessionProposer> get copyWith =>
      throw _privateConstructorUsedError;
}
