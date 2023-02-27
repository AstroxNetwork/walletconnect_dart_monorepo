// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'irn.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IrnParams _$IrnParamsFromJson(Map<String, dynamic> json) {
  return _IrnParams.fromJson(json);
}

/// @nodoc
mixin _$IrnParams {
  int get tag => throw _privateConstructorUsedError;
  @TtlConverter()
  Duration get ttl => throw _privateConstructorUsedError;
  bool get prompt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrnParamsCopyWith<IrnParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrnParamsCopyWith<$Res> {
  factory $IrnParamsCopyWith(IrnParams value, $Res Function(IrnParams) then) =
      _$IrnParamsCopyWithImpl<$Res, IrnParams>;
  @useResult
  $Res call({int tag, @TtlConverter() Duration ttl, bool prompt});
}

/// @nodoc
class _$IrnParamsCopyWithImpl<$Res, $Val extends IrnParams>
    implements $IrnParamsCopyWith<$Res> {
  _$IrnParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? ttl = null,
    Object? prompt = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as int,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IrnParamsCopyWith<$Res> implements $IrnParamsCopyWith<$Res> {
  factory _$$_IrnParamsCopyWith(
          _$_IrnParams value, $Res Function(_$_IrnParams) then) =
      __$$_IrnParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tag, @TtlConverter() Duration ttl, bool prompt});
}

/// @nodoc
class __$$_IrnParamsCopyWithImpl<$Res>
    extends _$IrnParamsCopyWithImpl<$Res, _$_IrnParams>
    implements _$$_IrnParamsCopyWith<$Res> {
  __$$_IrnParamsCopyWithImpl(
      _$_IrnParams _value, $Res Function(_$_IrnParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? ttl = null,
    Object? prompt = null,
  }) {
    return _then(_$_IrnParams(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as int,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IrnParams implements _IrnParams {
  const _$_IrnParams(
      {required this.tag,
      @TtlConverter() required this.ttl,
      this.prompt = false});

  factory _$_IrnParams.fromJson(Map<String, dynamic> json) =>
      _$$_IrnParamsFromJson(json);

  @override
  final int tag;
  @override
  @TtlConverter()
  final Duration ttl;
  @override
  @JsonKey()
  final bool prompt;

  @override
  String toString() {
    return 'IrnParams(tag: $tag, ttl: $ttl, prompt: $prompt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IrnParams &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tag, ttl, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IrnParamsCopyWith<_$_IrnParams> get copyWith =>
      __$$_IrnParamsCopyWithImpl<_$_IrnParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IrnParamsToJson(
      this,
    );
  }
}

abstract class _IrnParams implements IrnParams {
  const factory _IrnParams(
      {required final int tag,
      @TtlConverter() required final Duration ttl,
      final bool prompt}) = _$_IrnParams;

  factory _IrnParams.fromJson(Map<String, dynamic> json) =
      _$_IrnParams.fromJson;

  @override
  int get tag;
  @override
  @TtlConverter()
  Duration get ttl;
  @override
  bool get prompt;
  @override
  @JsonKey(ignore: true)
  _$$_IrnParamsCopyWith<_$_IrnParams> get copyWith =>
      throw _privateConstructorUsedError;
}

IrnJWTHeader _$IrnJWTHeaderFromJson(Map<String, dynamic> json) {
  return _IrnJWTHeader.fromJson(json);
}

/// @nodoc
mixin _$IrnJWTHeader {
  @JsonKey(name: 'alg')
  String get algorithm => throw _privateConstructorUsedError;
  @JsonKey(name: 'typ')
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrnJWTHeaderCopyWith<IrnJWTHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrnJWTHeaderCopyWith<$Res> {
  factory $IrnJWTHeaderCopyWith(
          IrnJWTHeader value, $Res Function(IrnJWTHeader) then) =
      _$IrnJWTHeaderCopyWithImpl<$Res, IrnJWTHeader>;
  @useResult
  $Res call(
      {@JsonKey(name: 'alg') String algorithm,
      @JsonKey(name: 'typ') String type});
}

/// @nodoc
class _$IrnJWTHeaderCopyWithImpl<$Res, $Val extends IrnJWTHeader>
    implements $IrnJWTHeaderCopyWith<$Res> {
  _$IrnJWTHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? algorithm = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IrnJWTHeaderCopyWith<$Res>
    implements $IrnJWTHeaderCopyWith<$Res> {
  factory _$$_IrnJWTHeaderCopyWith(
          _$_IrnJWTHeader value, $Res Function(_$_IrnJWTHeader) then) =
      __$$_IrnJWTHeaderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'alg') String algorithm,
      @JsonKey(name: 'typ') String type});
}

/// @nodoc
class __$$_IrnJWTHeaderCopyWithImpl<$Res>
    extends _$IrnJWTHeaderCopyWithImpl<$Res, _$_IrnJWTHeader>
    implements _$$_IrnJWTHeaderCopyWith<$Res> {
  __$$_IrnJWTHeaderCopyWithImpl(
      _$_IrnJWTHeader _value, $Res Function(_$_IrnJWTHeader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? algorithm = null,
    Object? type = null,
  }) {
    return _then(_$_IrnJWTHeader(
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IrnJWTHeader implements _IrnJWTHeader {
  const _$_IrnJWTHeader(
      {@JsonKey(name: 'alg') required this.algorithm,
      @JsonKey(name: 'typ') required this.type});

  factory _$_IrnJWTHeader.fromJson(Map<String, dynamic> json) =>
      _$$_IrnJWTHeaderFromJson(json);

  @override
  @JsonKey(name: 'alg')
  final String algorithm;
  @override
  @JsonKey(name: 'typ')
  final String type;

  @override
  String toString() {
    return 'IrnJWTHeader(algorithm: $algorithm, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IrnJWTHeader &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, algorithm, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IrnJWTHeaderCopyWith<_$_IrnJWTHeader> get copyWith =>
      __$$_IrnJWTHeaderCopyWithImpl<_$_IrnJWTHeader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IrnJWTHeaderToJson(
      this,
    );
  }
}

abstract class _IrnJWTHeader implements IrnJWTHeader {
  const factory _IrnJWTHeader(
      {@JsonKey(name: 'alg') required final String algorithm,
      @JsonKey(name: 'typ') required final String type}) = _$_IrnJWTHeader;

  factory _IrnJWTHeader.fromJson(Map<String, dynamic> json) =
      _$_IrnJWTHeader.fromJson;

  @override
  @JsonKey(name: 'alg')
  String get algorithm;
  @override
  @JsonKey(name: 'typ')
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_IrnJWTHeaderCopyWith<_$_IrnJWTHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

IrnJWTPayload _$IrnJWTPayloadFromJson(Map<String, dynamic> json) {
  return _IrnJWTPayload.fromJson(json);
}

/// @nodoc
mixin _$IrnJWTPayload {
  @JsonKey(name: 'iss')
  String get issuer => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub')
  String get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'aud')
  String get audience => throw _privateConstructorUsedError;
  @JsonKey(name: 'iat')
  int get issuedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'exp')
  int get expiration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrnJWTPayloadCopyWith<IrnJWTPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrnJWTPayloadCopyWith<$Res> {
  factory $IrnJWTPayloadCopyWith(
          IrnJWTPayload value, $Res Function(IrnJWTPayload) then) =
      _$IrnJWTPayloadCopyWithImpl<$Res, IrnJWTPayload>;
  @useResult
  $Res call(
      {@JsonKey(name: 'iss') String issuer,
      @JsonKey(name: 'sub') String subject,
      @JsonKey(name: 'aud') String audience,
      @JsonKey(name: 'iat') int issuedAt,
      @JsonKey(name: 'exp') int expiration});
}

/// @nodoc
class _$IrnJWTPayloadCopyWithImpl<$Res, $Val extends IrnJWTPayload>
    implements $IrnJWTPayloadCopyWith<$Res> {
  _$IrnJWTPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuer = null,
    Object? subject = null,
    Object? audience = null,
    Object? issuedAt = null,
    Object? expiration = null,
  }) {
    return _then(_value.copyWith(
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      audience: null == audience
          ? _value.audience
          : audience // ignore: cast_nullable_to_non_nullable
              as String,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IrnJWTPayloadCopyWith<$Res>
    implements $IrnJWTPayloadCopyWith<$Res> {
  factory _$$_IrnJWTPayloadCopyWith(
          _$_IrnJWTPayload value, $Res Function(_$_IrnJWTPayload) then) =
      __$$_IrnJWTPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'iss') String issuer,
      @JsonKey(name: 'sub') String subject,
      @JsonKey(name: 'aud') String audience,
      @JsonKey(name: 'iat') int issuedAt,
      @JsonKey(name: 'exp') int expiration});
}

/// @nodoc
class __$$_IrnJWTPayloadCopyWithImpl<$Res>
    extends _$IrnJWTPayloadCopyWithImpl<$Res, _$_IrnJWTPayload>
    implements _$$_IrnJWTPayloadCopyWith<$Res> {
  __$$_IrnJWTPayloadCopyWithImpl(
      _$_IrnJWTPayload _value, $Res Function(_$_IrnJWTPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuer = null,
    Object? subject = null,
    Object? audience = null,
    Object? issuedAt = null,
    Object? expiration = null,
  }) {
    return _then(_$_IrnJWTPayload(
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      audience: null == audience
          ? _value.audience
          : audience // ignore: cast_nullable_to_non_nullable
              as String,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IrnJWTPayload implements _IrnJWTPayload {
  const _$_IrnJWTPayload(
      {@JsonKey(name: 'iss') required this.issuer,
      @JsonKey(name: 'sub') required this.subject,
      @JsonKey(name: 'aud') required this.audience,
      @JsonKey(name: 'iat') required this.issuedAt,
      @JsonKey(name: 'exp') required this.expiration});

  factory _$_IrnJWTPayload.fromJson(Map<String, dynamic> json) =>
      _$$_IrnJWTPayloadFromJson(json);

  @override
  @JsonKey(name: 'iss')
  final String issuer;
  @override
  @JsonKey(name: 'sub')
  final String subject;
  @override
  @JsonKey(name: 'aud')
  final String audience;
  @override
  @JsonKey(name: 'iat')
  final int issuedAt;
  @override
  @JsonKey(name: 'exp')
  final int expiration;

  @override
  String toString() {
    return 'IrnJWTPayload(issuer: $issuer, subject: $subject, audience: $audience, issuedAt: $issuedAt, expiration: $expiration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IrnJWTPayload &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.audience, audience) ||
                other.audience == audience) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, issuer, subject, audience, issuedAt, expiration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IrnJWTPayloadCopyWith<_$_IrnJWTPayload> get copyWith =>
      __$$_IrnJWTPayloadCopyWithImpl<_$_IrnJWTPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IrnJWTPayloadToJson(
      this,
    );
  }
}

abstract class _IrnJWTPayload implements IrnJWTPayload {
  const factory _IrnJWTPayload(
      {@JsonKey(name: 'iss') required final String issuer,
      @JsonKey(name: 'sub') required final String subject,
      @JsonKey(name: 'aud') required final String audience,
      @JsonKey(name: 'iat') required final int issuedAt,
      @JsonKey(name: 'exp') required final int expiration}) = _$_IrnJWTPayload;

  factory _IrnJWTPayload.fromJson(Map<String, dynamic> json) =
      _$_IrnJWTPayload.fromJson;

  @override
  @JsonKey(name: 'iss')
  String get issuer;
  @override
  @JsonKey(name: 'sub')
  String get subject;
  @override
  @JsonKey(name: 'aud')
  String get audience;
  @override
  @JsonKey(name: 'iat')
  int get issuedAt;
  @override
  @JsonKey(name: 'exp')
  int get expiration;
  @override
  @JsonKey(ignore: true)
  _$$_IrnJWTPayloadCopyWith<_$_IrnJWTPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
