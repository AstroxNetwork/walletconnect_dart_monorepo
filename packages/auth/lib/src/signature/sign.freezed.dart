// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignatureData _$SignatureDataFromJson(Map<String, dynamic> json) {
  return _SignatureData.fromJson(json);
}

/// @nodoc
mixin _$SignatureData {
  @Uint8ListToListIntConverter()
  Uint8List get v => throw _privateConstructorUsedError;
  @Uint8ListToListIntConverter()
  Uint8List get r => throw _privateConstructorUsedError;
  @Uint8ListToListIntConverter()
  Uint8List get s => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignatureDataCopyWith<SignatureData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignatureDataCopyWith<$Res> {
  factory $SignatureDataCopyWith(
          SignatureData value, $Res Function(SignatureData) then) =
      _$SignatureDataCopyWithImpl<$Res, SignatureData>;
  @useResult
  $Res call(
      {@Uint8ListToListIntConverter() Uint8List v,
      @Uint8ListToListIntConverter() Uint8List r,
      @Uint8ListToListIntConverter() Uint8List s});
}

/// @nodoc
class _$SignatureDataCopyWithImpl<$Res, $Val extends SignatureData>
    implements $SignatureDataCopyWith<$Res> {
  _$SignatureDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = null,
    Object? r = null,
    Object? s = null,
  }) {
    return _then(_value.copyWith(
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignatureDataCopyWith<$Res>
    implements $SignatureDataCopyWith<$Res> {
  factory _$$_SignatureDataCopyWith(
          _$_SignatureData value, $Res Function(_$_SignatureData) then) =
      __$$_SignatureDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Uint8ListToListIntConverter() Uint8List v,
      @Uint8ListToListIntConverter() Uint8List r,
      @Uint8ListToListIntConverter() Uint8List s});
}

/// @nodoc
class __$$_SignatureDataCopyWithImpl<$Res>
    extends _$SignatureDataCopyWithImpl<$Res, _$_SignatureData>
    implements _$$_SignatureDataCopyWith<$Res> {
  __$$_SignatureDataCopyWithImpl(
      _$_SignatureData _value, $Res Function(_$_SignatureData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? v = null,
    Object? r = null,
    Object? s = null,
  }) {
    return _then(_$_SignatureData(
      null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignatureData extends _SignatureData {
  const _$_SignatureData(
      @Uint8ListToListIntConverter() this.v,
      @Uint8ListToListIntConverter() this.r,
      @Uint8ListToListIntConverter() this.s)
      : super._();

  factory _$_SignatureData.fromJson(Map<String, dynamic> json) =>
      _$$_SignatureDataFromJson(json);

  @override
  @Uint8ListToListIntConverter()
  final Uint8List v;
  @override
  @Uint8ListToListIntConverter()
  final Uint8List r;
  @override
  @Uint8ListToListIntConverter()
  final Uint8List s;

  @override
  String toString() {
    return 'SignatureData(v: $v, r: $r, s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignatureData &&
            const DeepCollectionEquality().equals(other.v, v) &&
            const DeepCollectionEquality().equals(other.r, r) &&
            const DeepCollectionEquality().equals(other.s, s));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(v),
      const DeepCollectionEquality().hash(r),
      const DeepCollectionEquality().hash(s));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignatureDataCopyWith<_$_SignatureData> get copyWith =>
      __$$_SignatureDataCopyWithImpl<_$_SignatureData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignatureDataToJson(
      this,
    );
  }
}

abstract class _SignatureData extends SignatureData {
  const factory _SignatureData(
      @Uint8ListToListIntConverter() final Uint8List v,
      @Uint8ListToListIntConverter() final Uint8List r,
      @Uint8ListToListIntConverter() final Uint8List s) = _$_SignatureData;
  const _SignatureData._() : super._();

  factory _SignatureData.fromJson(Map<String, dynamic> json) =
      _$_SignatureData.fromJson;

  @override
  @Uint8ListToListIntConverter()
  Uint8List get v;
  @override
  @Uint8ListToListIntConverter()
  Uint8List get r;
  @override
  @Uint8ListToListIntConverter()
  Uint8List get s;
  @override
  @JsonKey(ignore: true)
  _$$_SignatureDataCopyWith<_$_SignatureData> get copyWith =>
      throw _privateConstructorUsedError;
}

ECKeyPair _$ECKeyPairFromJson(Map<String, dynamic> json) {
  return _ECKeyPair.fromJson(json);
}

/// @nodoc
mixin _$ECKeyPair {
  BigInt get privateKey => throw _privateConstructorUsedError;
  BigInt get publicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ECKeyPairCopyWith<ECKeyPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ECKeyPairCopyWith<$Res> {
  factory $ECKeyPairCopyWith(ECKeyPair value, $Res Function(ECKeyPair) then) =
      _$ECKeyPairCopyWithImpl<$Res, ECKeyPair>;
  @useResult
  $Res call({BigInt privateKey, BigInt publicKey});
}

/// @nodoc
class _$ECKeyPairCopyWithImpl<$Res, $Val extends ECKeyPair>
    implements $ECKeyPairCopyWith<$Res> {
  _$ECKeyPairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateKey = null,
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      privateKey: null == privateKey
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as BigInt,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ECKeyPairCopyWith<$Res> implements $ECKeyPairCopyWith<$Res> {
  factory _$$_ECKeyPairCopyWith(
          _$_ECKeyPair value, $Res Function(_$_ECKeyPair) then) =
      __$$_ECKeyPairCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt privateKey, BigInt publicKey});
}

/// @nodoc
class __$$_ECKeyPairCopyWithImpl<$Res>
    extends _$ECKeyPairCopyWithImpl<$Res, _$_ECKeyPair>
    implements _$$_ECKeyPairCopyWith<$Res> {
  __$$_ECKeyPairCopyWithImpl(
      _$_ECKeyPair _value, $Res Function(_$_ECKeyPair) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateKey = null,
    Object? publicKey = null,
  }) {
    return _then(_$_ECKeyPair(
      privateKey: null == privateKey
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as BigInt,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ECKeyPair extends _ECKeyPair {
  const _$_ECKeyPair({required this.privateKey, required this.publicKey})
      : super._();

  factory _$_ECKeyPair.fromJson(Map<String, dynamic> json) =>
      _$$_ECKeyPairFromJson(json);

  @override
  final BigInt privateKey;
  @override
  final BigInt publicKey;

  @override
  String toString() {
    return 'ECKeyPair(privateKey: $privateKey, publicKey: $publicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ECKeyPair &&
            (identical(other.privateKey, privateKey) ||
                other.privateKey == privateKey) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, privateKey, publicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ECKeyPairCopyWith<_$_ECKeyPair> get copyWith =>
      __$$_ECKeyPairCopyWithImpl<_$_ECKeyPair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ECKeyPairToJson(
      this,
    );
  }
}

abstract class _ECKeyPair extends ECKeyPair {
  const factory _ECKeyPair(
      {required final BigInt privateKey,
      required final BigInt publicKey}) = _$_ECKeyPair;
  const _ECKeyPair._() : super._();

  factory _ECKeyPair.fromJson(Map<String, dynamic> json) =
      _$_ECKeyPair.fromJson;

  @override
  BigInt get privateKey;
  @override
  BigInt get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$_ECKeyPairCopyWith<_$_ECKeyPair> get copyWith =>
      throw _privateConstructorUsedError;
}

ECDSASignature _$ECDSASignatureFromJson(Map<String, dynamic> json) {
  return _ECDSASignature.fromJson(json);
}

/// @nodoc
mixin _$ECDSASignature {
  BigInt get r => throw _privateConstructorUsedError;
  BigInt get s => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ECDSASignatureCopyWith<ECDSASignature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ECDSASignatureCopyWith<$Res> {
  factory $ECDSASignatureCopyWith(
          ECDSASignature value, $Res Function(ECDSASignature) then) =
      _$ECDSASignatureCopyWithImpl<$Res, ECDSASignature>;
  @useResult
  $Res call({BigInt r, BigInt s});
}

/// @nodoc
class _$ECDSASignatureCopyWithImpl<$Res, $Val extends ECDSASignature>
    implements $ECDSASignatureCopyWith<$Res> {
  _$ECDSASignatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? s = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as BigInt,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ECDSASignatureCopyWith<$Res>
    implements $ECDSASignatureCopyWith<$Res> {
  factory _$$_ECDSASignatureCopyWith(
          _$_ECDSASignature value, $Res Function(_$_ECDSASignature) then) =
      __$$_ECDSASignatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BigInt r, BigInt s});
}

/// @nodoc
class __$$_ECDSASignatureCopyWithImpl<$Res>
    extends _$ECDSASignatureCopyWithImpl<$Res, _$_ECDSASignature>
    implements _$$_ECDSASignatureCopyWith<$Res> {
  __$$_ECDSASignatureCopyWithImpl(
      _$_ECDSASignature _value, $Res Function(_$_ECDSASignature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? s = null,
  }) {
    return _then(_$_ECDSASignature(
      null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as BigInt,
      null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ECDSASignature extends _ECDSASignature {
  const _$_ECDSASignature(this.r, this.s) : super._();

  factory _$_ECDSASignature.fromJson(Map<String, dynamic> json) =>
      _$$_ECDSASignatureFromJson(json);

  @override
  final BigInt r;
  @override
  final BigInt s;

  @override
  String toString() {
    return 'ECDSASignature(r: $r, s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ECDSASignature &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.s, s) || other.s == s));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, s);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ECDSASignatureCopyWith<_$_ECDSASignature> get copyWith =>
      __$$_ECDSASignatureCopyWithImpl<_$_ECDSASignature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ECDSASignatureToJson(
      this,
    );
  }
}

abstract class _ECDSASignature extends ECDSASignature {
  const factory _ECDSASignature(final BigInt r, final BigInt s) =
      _$_ECDSASignature;
  const _ECDSASignature._() : super._();

  factory _ECDSASignature.fromJson(Map<String, dynamic> json) =
      _$_ECDSASignature.fromJson;

  @override
  BigInt get r;
  @override
  BigInt get s;
  @override
  @JsonKey(ignore: true)
  _$$_ECDSASignatureCopyWith<_$_ECDSASignature> get copyWith =>
      throw _privateConstructorUsedError;
}
