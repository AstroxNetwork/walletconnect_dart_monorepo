// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cacao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cacao _$CacaoFromJson(Map<String, dynamic> json) {
  return _Cacao.fromJson(json);
}

/// @nodoc
mixin _$Cacao {
  CacaoHeader get header => throw _privateConstructorUsedError;
  CacaoPayload get payload => throw _privateConstructorUsedError;
  CacaoSignature get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CacaoCopyWith<Cacao> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacaoCopyWith<$Res> {
  factory $CacaoCopyWith(Cacao value, $Res Function(Cacao) then) =
      _$CacaoCopyWithImpl<$Res, Cacao>;
  @useResult
  $Res call(
      {CacaoHeader header, CacaoPayload payload, CacaoSignature signature});

  $CacaoHeaderCopyWith<$Res> get header;
  $CacaoPayloadCopyWith<$Res> get payload;
  $CacaoSignatureCopyWith<$Res> get signature;
}

/// @nodoc
class _$CacaoCopyWithImpl<$Res, $Val extends Cacao>
    implements $CacaoCopyWith<$Res> {
  _$CacaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? payload = null,
    Object? signature = null,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as CacaoHeader,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as CacaoPayload,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as CacaoSignature,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CacaoHeaderCopyWith<$Res> get header {
    return $CacaoHeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CacaoPayloadCopyWith<$Res> get payload {
    return $CacaoPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CacaoSignatureCopyWith<$Res> get signature {
    return $CacaoSignatureCopyWith<$Res>(_value.signature, (value) {
      return _then(_value.copyWith(signature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CacaoCopyWith<$Res> implements $CacaoCopyWith<$Res> {
  factory _$$_CacaoCopyWith(_$_Cacao value, $Res Function(_$_Cacao) then) =
      __$$_CacaoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CacaoHeader header, CacaoPayload payload, CacaoSignature signature});

  @override
  $CacaoHeaderCopyWith<$Res> get header;
  @override
  $CacaoPayloadCopyWith<$Res> get payload;
  @override
  $CacaoSignatureCopyWith<$Res> get signature;
}

/// @nodoc
class __$$_CacaoCopyWithImpl<$Res> extends _$CacaoCopyWithImpl<$Res, _$_Cacao>
    implements _$$_CacaoCopyWith<$Res> {
  __$$_CacaoCopyWithImpl(_$_Cacao _value, $Res Function(_$_Cacao) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? payload = null,
    Object? signature = null,
  }) {
    return _then(_$_Cacao(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as CacaoHeader,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as CacaoPayload,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as CacaoSignature,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cacao implements _Cacao {
  const _$_Cacao(
      {required this.header, required this.payload, required this.signature});

  factory _$_Cacao.fromJson(Map<String, dynamic> json) =>
      _$$_CacaoFromJson(json);

  @override
  final CacaoHeader header;
  @override
  final CacaoPayload payload;
  @override
  final CacaoSignature signature;

  @override
  String toString() {
    return 'Cacao(header: $header, payload: $payload, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cacao &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, header, payload, signature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacaoCopyWith<_$_Cacao> get copyWith =>
      __$$_CacaoCopyWithImpl<_$_Cacao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CacaoToJson(
      this,
    );
  }
}

abstract class _Cacao implements Cacao {
  const factory _Cacao(
      {required final CacaoHeader header,
      required final CacaoPayload payload,
      required final CacaoSignature signature}) = _$_Cacao;

  factory _Cacao.fromJson(Map<String, dynamic> json) = _$_Cacao.fromJson;

  @override
  CacaoHeader get header;
  @override
  CacaoPayload get payload;
  @override
  CacaoSignature get signature;
  @override
  @JsonKey(ignore: true)
  _$$_CacaoCopyWith<_$_Cacao> get copyWith =>
      throw _privateConstructorUsedError;
}

CacaoSignature _$CacaoSignatureFromJson(Map<String, dynamic> json) {
  return _CacaoSignature.fromJson(json);
}

/// @nodoc
mixin _$CacaoSignature {
  String get t => throw _privateConstructorUsedError;
  String get s => throw _privateConstructorUsedError;
  String? get m => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CacaoSignatureCopyWith<CacaoSignature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacaoSignatureCopyWith<$Res> {
  factory $CacaoSignatureCopyWith(
          CacaoSignature value, $Res Function(CacaoSignature) then) =
      _$CacaoSignatureCopyWithImpl<$Res, CacaoSignature>;
  @useResult
  $Res call({String t, String s, String? m});
}

/// @nodoc
class _$CacaoSignatureCopyWithImpl<$Res, $Val extends CacaoSignature>
    implements $CacaoSignatureCopyWith<$Res> {
  _$CacaoSignatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? t = null,
    Object? s = null,
    Object? m = freezed,
  }) {
    return _then(_value.copyWith(
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
      m: freezed == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CacaoSignatureCopyWith<$Res>
    implements $CacaoSignatureCopyWith<$Res> {
  factory _$$_CacaoSignatureCopyWith(
          _$_CacaoSignature value, $Res Function(_$_CacaoSignature) then) =
      __$$_CacaoSignatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String t, String s, String? m});
}

/// @nodoc
class __$$_CacaoSignatureCopyWithImpl<$Res>
    extends _$CacaoSignatureCopyWithImpl<$Res, _$_CacaoSignature>
    implements _$$_CacaoSignatureCopyWith<$Res> {
  __$$_CacaoSignatureCopyWithImpl(
      _$_CacaoSignature _value, $Res Function(_$_CacaoSignature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? t = null,
    Object? s = null,
    Object? m = freezed,
  }) {
    return _then(_$_CacaoSignature(
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
      m: freezed == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CacaoSignature implements _CacaoSignature {
  const _$_CacaoSignature({required this.t, required this.s, this.m});

  factory _$_CacaoSignature.fromJson(Map<String, dynamic> json) =>
      _$$_CacaoSignatureFromJson(json);

  @override
  final String t;
  @override
  final String s;
  @override
  final String? m;

  @override
  String toString() {
    return 'CacaoSignature(t: $t, s: $s, m: $m)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacaoSignature &&
            (identical(other.t, t) || other.t == t) &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.m, m) || other.m == m));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, t, s, m);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacaoSignatureCopyWith<_$_CacaoSignature> get copyWith =>
      __$$_CacaoSignatureCopyWithImpl<_$_CacaoSignature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CacaoSignatureToJson(
      this,
    );
  }
}

abstract class _CacaoSignature implements CacaoSignature {
  const factory _CacaoSignature(
      {required final String t,
      required final String s,
      final String? m}) = _$_CacaoSignature;

  factory _CacaoSignature.fromJson(Map<String, dynamic> json) =
      _$_CacaoSignature.fromJson;

  @override
  String get t;
  @override
  String get s;
  @override
  String? get m;
  @override
  @JsonKey(ignore: true)
  _$$_CacaoSignatureCopyWith<_$_CacaoSignature> get copyWith =>
      throw _privateConstructorUsedError;
}

CacaoHeader _$CacaoHeaderFromJson(Map<String, dynamic> json) {
  return _CacaoHeader.fromJson(json);
}

/// @nodoc
mixin _$CacaoHeader {
  String get t => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CacaoHeaderCopyWith<CacaoHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacaoHeaderCopyWith<$Res> {
  factory $CacaoHeaderCopyWith(
          CacaoHeader value, $Res Function(CacaoHeader) then) =
      _$CacaoHeaderCopyWithImpl<$Res, CacaoHeader>;
  @useResult
  $Res call({String t});
}

/// @nodoc
class _$CacaoHeaderCopyWithImpl<$Res, $Val extends CacaoHeader>
    implements $CacaoHeaderCopyWith<$Res> {
  _$CacaoHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? t = null,
  }) {
    return _then(_value.copyWith(
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CacaoHeaderCopyWith<$Res>
    implements $CacaoHeaderCopyWith<$Res> {
  factory _$$_CacaoHeaderCopyWith(
          _$_CacaoHeader value, $Res Function(_$_CacaoHeader) then) =
      __$$_CacaoHeaderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String t});
}

/// @nodoc
class __$$_CacaoHeaderCopyWithImpl<$Res>
    extends _$CacaoHeaderCopyWithImpl<$Res, _$_CacaoHeader>
    implements _$$_CacaoHeaderCopyWith<$Res> {
  __$$_CacaoHeaderCopyWithImpl(
      _$_CacaoHeader _value, $Res Function(_$_CacaoHeader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? t = null,
  }) {
    return _then(_$_CacaoHeader(
      null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CacaoHeader implements _CacaoHeader {
  const _$_CacaoHeader(this.t);

  factory _$_CacaoHeader.fromJson(Map<String, dynamic> json) =>
      _$$_CacaoHeaderFromJson(json);

  @override
  final String t;

  @override
  String toString() {
    return 'CacaoHeader(t: $t)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacaoHeader &&
            (identical(other.t, t) || other.t == t));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, t);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacaoHeaderCopyWith<_$_CacaoHeader> get copyWith =>
      __$$_CacaoHeaderCopyWithImpl<_$_CacaoHeader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CacaoHeaderToJson(
      this,
    );
  }
}

abstract class _CacaoHeader implements CacaoHeader {
  const factory _CacaoHeader(final String t) = _$_CacaoHeader;

  factory _CacaoHeader.fromJson(Map<String, dynamic> json) =
      _$_CacaoHeader.fromJson;

  @override
  String get t;
  @override
  @JsonKey(ignore: true)
  _$$_CacaoHeaderCopyWith<_$_CacaoHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

CacaoPayload _$CacaoPayloadFromJson(Map<String, dynamic> json) {
  return _CacaoPayload.fromJson(json);
}

/// @nodoc
mixin _$CacaoPayload {
  String get iss => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;
  String get aud => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  String get iat => throw _privateConstructorUsedError;
  String? get nbf => throw _privateConstructorUsedError;
  String? get exp => throw _privateConstructorUsedError;
  String? get statement => throw _privateConstructorUsedError;
  String? get requestId => throw _privateConstructorUsedError;
  List<String>? get resources => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CacaoPayloadCopyWith<CacaoPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacaoPayloadCopyWith<$Res> {
  factory $CacaoPayloadCopyWith(
          CacaoPayload value, $Res Function(CacaoPayload) then) =
      _$CacaoPayloadCopyWithImpl<$Res, CacaoPayload>;
  @useResult
  $Res call(
      {String iss,
      String domain,
      String aud,
      String version,
      String nonce,
      String iat,
      String? nbf,
      String? exp,
      String? statement,
      String? requestId,
      List<String>? resources});
}

/// @nodoc
class _$CacaoPayloadCopyWithImpl<$Res, $Val extends CacaoPayload>
    implements $CacaoPayloadCopyWith<$Res> {
  _$CacaoPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iss = null,
    Object? domain = null,
    Object? aud = null,
    Object? version = null,
    Object? nonce = null,
    Object? iat = null,
    Object? nbf = freezed,
    Object? exp = freezed,
    Object? statement = freezed,
    Object? requestId = freezed,
    Object? resources = freezed,
  }) {
    return _then(_value.copyWith(
      iss: null == iss
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      iat: null == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as String,
      nbf: freezed == nbf
          ? _value.nbf
          : nbf // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as String?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: freezed == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CacaoPayloadCopyWith<$Res>
    implements $CacaoPayloadCopyWith<$Res> {
  factory _$$_CacaoPayloadCopyWith(
          _$_CacaoPayload value, $Res Function(_$_CacaoPayload) then) =
      __$$_CacaoPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String iss,
      String domain,
      String aud,
      String version,
      String nonce,
      String iat,
      String? nbf,
      String? exp,
      String? statement,
      String? requestId,
      List<String>? resources});
}

/// @nodoc
class __$$_CacaoPayloadCopyWithImpl<$Res>
    extends _$CacaoPayloadCopyWithImpl<$Res, _$_CacaoPayload>
    implements _$$_CacaoPayloadCopyWith<$Res> {
  __$$_CacaoPayloadCopyWithImpl(
      _$_CacaoPayload _value, $Res Function(_$_CacaoPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iss = null,
    Object? domain = null,
    Object? aud = null,
    Object? version = null,
    Object? nonce = null,
    Object? iat = null,
    Object? nbf = freezed,
    Object? exp = freezed,
    Object? statement = freezed,
    Object? requestId = freezed,
    Object? resources = freezed,
  }) {
    return _then(_$_CacaoPayload(
      iss: null == iss
          ? _value.iss
          : iss // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      iat: null == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as String,
      nbf: freezed == nbf
          ? _value.nbf
          : nbf // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as String?,
      statement: freezed == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: freezed == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CacaoPayload implements _CacaoPayload {
  const _$_CacaoPayload(
      {required this.iss,
      required this.domain,
      required this.aud,
      required this.version,
      required this.nonce,
      required this.iat,
      this.nbf,
      this.exp,
      this.statement,
      this.requestId,
      final List<String>? resources})
      : _resources = resources;

  factory _$_CacaoPayload.fromJson(Map<String, dynamic> json) =>
      _$$_CacaoPayloadFromJson(json);

  @override
  final String iss;
  @override
  final String domain;
  @override
  final String aud;
  @override
  final String version;
  @override
  final String nonce;
  @override
  final String iat;
  @override
  final String? nbf;
  @override
  final String? exp;
  @override
  final String? statement;
  @override
  final String? requestId;
  final List<String>? _resources;
  @override
  List<String>? get resources {
    final value = _resources;
    if (value == null) return null;
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CacaoPayload(iss: $iss, domain: $domain, aud: $aud, version: $version, nonce: $nonce, iat: $iat, nbf: $nbf, exp: $exp, statement: $statement, requestId: $requestId, resources: $resources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacaoPayload &&
            (identical(other.iss, iss) || other.iss == iss) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.aud, aud) || other.aud == aud) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.iat, iat) || other.iat == iat) &&
            (identical(other.nbf, nbf) || other.nbf == nbf) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      iss,
      domain,
      aud,
      version,
      nonce,
      iat,
      nbf,
      exp,
      statement,
      requestId,
      const DeepCollectionEquality().hash(_resources));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacaoPayloadCopyWith<_$_CacaoPayload> get copyWith =>
      __$$_CacaoPayloadCopyWithImpl<_$_CacaoPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CacaoPayloadToJson(
      this,
    );
  }
}

abstract class _CacaoPayload implements CacaoPayload {
  const factory _CacaoPayload(
      {required final String iss,
      required final String domain,
      required final String aud,
      required final String version,
      required final String nonce,
      required final String iat,
      final String? nbf,
      final String? exp,
      final String? statement,
      final String? requestId,
      final List<String>? resources}) = _$_CacaoPayload;

  factory _CacaoPayload.fromJson(Map<String, dynamic> json) =
      _$_CacaoPayload.fromJson;

  @override
  String get iss;
  @override
  String get domain;
  @override
  String get aud;
  @override
  String get version;
  @override
  String get nonce;
  @override
  String get iat;
  @override
  String? get nbf;
  @override
  String? get exp;
  @override
  String? get statement;
  @override
  String? get requestId;
  @override
  List<String>? get resources;
  @override
  @JsonKey(ignore: true)
  _$$_CacaoPayloadCopyWith<_$_CacaoPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
