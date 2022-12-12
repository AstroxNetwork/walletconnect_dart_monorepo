// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthParams _$AuthParamsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'request':
      return AuthRequestParams.fromJson(json);
    case 'response':
      return AuthResponseParams.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthParams',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthParams {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Requester requester, PayloadParams payloadParams)
        request,
    required TResult Function(
            @JsonKey(name: 'h') CacaoHeader header,
            @JsonKey(name: 'p') CacaoPayload payload,
            @JsonKey(name: 's') CacaoSignature signature)
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Requester requester, PayloadParams payloadParams)?
        request,
    TResult? Function(
            @JsonKey(name: 'h') CacaoHeader header,
            @JsonKey(name: 'p') CacaoPayload payload,
            @JsonKey(name: 's') CacaoSignature signature)?
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Requester requester, PayloadParams payloadParams)? request,
    TResult Function(
            @JsonKey(name: 'h') CacaoHeader header,
            @JsonKey(name: 'p') CacaoPayload payload,
            @JsonKey(name: 's') CacaoSignature signature)?
        response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequestParams value) request,
    required TResult Function(AuthResponseParams value) response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequestParams value)? request,
    TResult? Function(AuthResponseParams value)? response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequestParams value)? request,
    TResult Function(AuthResponseParams value)? response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthParamsCopyWith<$Res> {
  factory $AuthParamsCopyWith(
          AuthParams value, $Res Function(AuthParams) then) =
      _$AuthParamsCopyWithImpl<$Res, AuthParams>;
}

/// @nodoc
class _$AuthParamsCopyWithImpl<$Res, $Val extends AuthParams>
    implements $AuthParamsCopyWith<$Res> {
  _$AuthParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthRequestParamsCopyWith<$Res> {
  factory _$$AuthRequestParamsCopyWith(
          _$AuthRequestParams value, $Res Function(_$AuthRequestParams) then) =
      __$$AuthRequestParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({Requester requester, PayloadParams payloadParams});

  $RequesterCopyWith<$Res> get requester;
  $PayloadParamsCopyWith<$Res> get payloadParams;
}

/// @nodoc
class __$$AuthRequestParamsCopyWithImpl<$Res>
    extends _$AuthParamsCopyWithImpl<$Res, _$AuthRequestParams>
    implements _$$AuthRequestParamsCopyWith<$Res> {
  __$$AuthRequestParamsCopyWithImpl(
      _$AuthRequestParams _value, $Res Function(_$AuthRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requester = null,
    Object? payloadParams = null,
  }) {
    return _then(_$AuthRequestParams(
      requester: null == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as Requester,
      payloadParams: null == payloadParams
          ? _value.payloadParams
          : payloadParams // ignore: cast_nullable_to_non_nullable
              as PayloadParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequesterCopyWith<$Res> get requester {
    return $RequesterCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadParamsCopyWith<$Res> get payloadParams {
    return $PayloadParamsCopyWith<$Res>(_value.payloadParams, (value) {
      return _then(_value.copyWith(payloadParams: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthRequestParams implements AuthRequestParams {
  const _$AuthRequestParams(
      {required this.requester,
      required this.payloadParams,
      final String? $type})
      : $type = $type ?? 'request';

  factory _$AuthRequestParams.fromJson(Map<String, dynamic> json) =>
      _$$AuthRequestParamsFromJson(json);

  @override
  final Requester requester;
  @override
  final PayloadParams payloadParams;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthParams.request(requester: $requester, payloadParams: $payloadParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRequestParams &&
            (identical(other.requester, requester) ||
                other.requester == requester) &&
            (identical(other.payloadParams, payloadParams) ||
                other.payloadParams == payloadParams));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requester, payloadParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRequestParamsCopyWith<_$AuthRequestParams> get copyWith =>
      __$$AuthRequestParamsCopyWithImpl<_$AuthRequestParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Requester requester, PayloadParams payloadParams)
        request,
    required TResult Function(
            @JsonKey(name: 'h') CacaoHeader header,
            @JsonKey(name: 'p') CacaoPayload payload,
            @JsonKey(name: 's') CacaoSignature signature)
        response,
  }) {
    return request(requester, payloadParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Requester requester, PayloadParams payloadParams)?
        request,
    TResult? Function(
            @JsonKey(name: 'h') CacaoHeader header,
            @JsonKey(name: 'p') CacaoPayload payload,
            @JsonKey(name: 's') CacaoSignature signature)?
        response,
  }) {
    return request?.call(requester, payloadParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Requester requester, PayloadParams payloadParams)? request,
    TResult Function(
            @JsonKey(name: 'h') CacaoHeader header,
            @JsonKey(name: 'p') CacaoPayload payload,
            @JsonKey(name: 's') CacaoSignature signature)?
        response,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(requester, payloadParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequestParams value) request,
    required TResult Function(AuthResponseParams value) response,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequestParams value)? request,
    TResult? Function(AuthResponseParams value)? response,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequestParams value)? request,
    TResult Function(AuthResponseParams value)? response,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRequestParamsToJson(
      this,
    );
  }
}

abstract class AuthRequestParams implements AuthParams {
  const factory AuthRequestParams(
      {required final Requester requester,
      required final PayloadParams payloadParams}) = _$AuthRequestParams;

  factory AuthRequestParams.fromJson(Map<String, dynamic> json) =
      _$AuthRequestParams.fromJson;

  Requester get requester;
  PayloadParams get payloadParams;
  @JsonKey(ignore: true)
  _$$AuthRequestParamsCopyWith<_$AuthRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResponseParamsCopyWith<$Res> {
  factory _$$AuthResponseParamsCopyWith(_$AuthResponseParams value,
          $Res Function(_$AuthResponseParams) then) =
      __$$AuthResponseParamsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'h') CacaoHeader header,
      @JsonKey(name: 'p') CacaoPayload payload,
      @JsonKey(name: 's') CacaoSignature signature});

  $CacaoHeaderCopyWith<$Res> get header;
  $CacaoPayloadCopyWith<$Res> get payload;
  $CacaoSignatureCopyWith<$Res> get signature;
}

/// @nodoc
class __$$AuthResponseParamsCopyWithImpl<$Res>
    extends _$AuthParamsCopyWithImpl<$Res, _$AuthResponseParams>
    implements _$$AuthResponseParamsCopyWith<$Res> {
  __$$AuthResponseParamsCopyWithImpl(
      _$AuthResponseParams _value, $Res Function(_$AuthResponseParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? payload = null,
    Object? signature = null,
  }) {
    return _then(_$AuthResponseParams(
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

  @override
  @pragma('vm:prefer-inline')
  $CacaoHeaderCopyWith<$Res> get header {
    return $CacaoHeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CacaoPayloadCopyWith<$Res> get payload {
    return $CacaoPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CacaoSignatureCopyWith<$Res> get signature {
    return $CacaoSignatureCopyWith<$Res>(_value.signature, (value) {
      return _then(_value.copyWith(signature: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseParams implements AuthResponseParams {
  const _$AuthResponseParams(
      {@JsonKey(name: 'h') required this.header,
      @JsonKey(name: 'p') required this.payload,
      @JsonKey(name: 's') required this.signature,
      final String? $type})
      : $type = $type ?? 'response';

  factory _$AuthResponseParams.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseParamsFromJson(json);

  @override
  @JsonKey(name: 'h')
  final CacaoHeader header;
  @override
  @JsonKey(name: 'p')
  final CacaoPayload payload;
  @override
  @JsonKey(name: 's')
  final CacaoSignature signature;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthParams.response(header: $header, payload: $payload, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseParams &&
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
  _$$AuthResponseParamsCopyWith<_$AuthResponseParams> get copyWith =>
      __$$AuthResponseParamsCopyWithImpl<_$AuthResponseParams>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Requester requester, PayloadParams payloadParams)
        request,
    required TResult Function(
            @JsonKey(name: 'h') CacaoHeader header,
            @JsonKey(name: 'p') CacaoPayload payload,
            @JsonKey(name: 's') CacaoSignature signature)
        response,
  }) {
    return response(header, payload, signature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Requester requester, PayloadParams payloadParams)?
        request,
    TResult? Function(
            @JsonKey(name: 'h') CacaoHeader header,
            @JsonKey(name: 'p') CacaoPayload payload,
            @JsonKey(name: 's') CacaoSignature signature)?
        response,
  }) {
    return response?.call(header, payload, signature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Requester requester, PayloadParams payloadParams)? request,
    TResult Function(
            @JsonKey(name: 'h') CacaoHeader header,
            @JsonKey(name: 'p') CacaoPayload payload,
            @JsonKey(name: 's') CacaoSignature signature)?
        response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(header, payload, signature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthRequestParams value) request,
    required TResult Function(AuthResponseParams value) response,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthRequestParams value)? request,
    TResult? Function(AuthResponseParams value)? response,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthRequestParams value)? request,
    TResult Function(AuthResponseParams value)? response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseParamsToJson(
      this,
    );
  }
}

abstract class AuthResponseParams implements AuthParams, Cacao {
  const factory AuthResponseParams(
          {@JsonKey(name: 'h') required final CacaoHeader header,
          @JsonKey(name: 'p') required final CacaoPayload payload,
          @JsonKey(name: 's') required final CacaoSignature signature}) =
      _$AuthResponseParams;

  factory AuthResponseParams.fromJson(Map<String, dynamic> json) =
      _$AuthResponseParams.fromJson;

  @JsonKey(name: 'h')
  CacaoHeader get header;
  @JsonKey(name: 'p')
  CacaoPayload get payload;
  @JsonKey(name: 's')
  CacaoSignature get signature;
  @JsonKey(ignore: true)
  _$$AuthResponseParamsCopyWith<_$AuthResponseParams> get copyWith =>
      throw _privateConstructorUsedError;
}
