// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionRequestPayload _$SessionRequestPayloadFromJson(
    Map<String, dynamic> json) {
  return _SessionRequestPayload.fromJson(json);
}

/// @nodoc
mixin _$SessionRequestPayload {
  String get method => throw _privateConstructorUsedError;
  String get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionRequestPayloadCopyWith<SessionRequestPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionRequestPayloadCopyWith<$Res> {
  factory $SessionRequestPayloadCopyWith(SessionRequestPayload value,
          $Res Function(SessionRequestPayload) then) =
      _$SessionRequestPayloadCopyWithImpl<$Res, SessionRequestPayload>;
  @useResult
  $Res call({String method, String params});
}

/// @nodoc
class _$SessionRequestPayloadCopyWithImpl<$Res,
        $Val extends SessionRequestPayload>
    implements $SessionRequestPayloadCopyWith<$Res> {
  _$SessionRequestPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionRequestPayloadCopyWith<$Res>
    implements $SessionRequestPayloadCopyWith<$Res> {
  factory _$$_SessionRequestPayloadCopyWith(_$_SessionRequestPayload value,
          $Res Function(_$_SessionRequestPayload) then) =
      __$$_SessionRequestPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String method, String params});
}

/// @nodoc
class __$$_SessionRequestPayloadCopyWithImpl<$Res>
    extends _$SessionRequestPayloadCopyWithImpl<$Res, _$_SessionRequestPayload>
    implements _$$_SessionRequestPayloadCopyWith<$Res> {
  __$$_SessionRequestPayloadCopyWithImpl(_$_SessionRequestPayload _value,
      $Res Function(_$_SessionRequestPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$_SessionRequestPayload(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionRequestPayload implements _SessionRequestPayload {
  const _$_SessionRequestPayload({required this.method, required this.params});

  factory _$_SessionRequestPayload.fromJson(Map<String, dynamic> json) =>
      _$$_SessionRequestPayloadFromJson(json);

  @override
  final String method;
  @override
  final String params;

  @override
  String toString() {
    return 'SessionRequestPayload(method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionRequestPayload &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, method, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionRequestPayloadCopyWith<_$_SessionRequestPayload> get copyWith =>
      __$$_SessionRequestPayloadCopyWithImpl<_$_SessionRequestPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionRequestPayloadToJson(
      this,
    );
  }
}

abstract class _SessionRequestPayload implements SessionRequestPayload {
  const factory _SessionRequestPayload(
      {required final String method,
      required final String params}) = _$_SessionRequestPayload;

  factory _SessionRequestPayload.fromJson(Map<String, dynamic> json) =
      _$_SessionRequestPayload.fromJson;

  @override
  String get method;
  @override
  String get params;
  @override
  @JsonKey(ignore: true)
  _$$_SessionRequestPayloadCopyWith<_$_SessionRequestPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionEventPayload _$SessionEventPayloadFromJson(Map<String, dynamic> json) {
  return _SessionEventPayload.fromJson(json);
}

/// @nodoc
mixin _$SessionEventPayload {
  String get name => throw _privateConstructorUsedError;
  @ObjectConverter()
  Object get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionEventPayloadCopyWith<SessionEventPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEventPayloadCopyWith<$Res> {
  factory $SessionEventPayloadCopyWith(
          SessionEventPayload value, $Res Function(SessionEventPayload) then) =
      _$SessionEventPayloadCopyWithImpl<$Res, SessionEventPayload>;
  @useResult
  $Res call({String name, @ObjectConverter() Object data});
}

/// @nodoc
class _$SessionEventPayloadCopyWithImpl<$Res, $Val extends SessionEventPayload>
    implements $SessionEventPayloadCopyWith<$Res> {
  _$SessionEventPayloadCopyWithImpl(this._value, this._then);

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
abstract class _$$_SessionEventPayloadCopyWith<$Res>
    implements $SessionEventPayloadCopyWith<$Res> {
  factory _$$_SessionEventPayloadCopyWith(_$_SessionEventPayload value,
          $Res Function(_$_SessionEventPayload) then) =
      __$$_SessionEventPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @ObjectConverter() Object data});
}

/// @nodoc
class __$$_SessionEventPayloadCopyWithImpl<$Res>
    extends _$SessionEventPayloadCopyWithImpl<$Res, _$_SessionEventPayload>
    implements _$$_SessionEventPayloadCopyWith<$Res> {
  __$$_SessionEventPayloadCopyWithImpl(_$_SessionEventPayload _value,
      $Res Function(_$_SessionEventPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$_SessionEventPayload(
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
class _$_SessionEventPayload implements _SessionEventPayload {
  const _$_SessionEventPayload(
      {required this.name, @ObjectConverter() required this.data});

  factory _$_SessionEventPayload.fromJson(Map<String, dynamic> json) =>
      _$$_SessionEventPayloadFromJson(json);

  @override
  final String name;
  @override
  @ObjectConverter()
  final Object data;

  @override
  String toString() {
    return 'SessionEventPayload(name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionEventPayload &&
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
  _$$_SessionEventPayloadCopyWith<_$_SessionEventPayload> get copyWith =>
      __$$_SessionEventPayloadCopyWithImpl<_$_SessionEventPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionEventPayloadToJson(
      this,
    );
  }
}

abstract class _SessionEventPayload implements SessionEventPayload {
  const factory _SessionEventPayload(
      {required final String name,
      @ObjectConverter() required final Object data}) = _$_SessionEventPayload;

  factory _SessionEventPayload.fromJson(Map<String, dynamic> json) =
      _$_SessionEventPayload.fromJson;

  @override
  String get name;
  @override
  @ObjectConverter()
  Object get data;
  @override
  @JsonKey(ignore: true)
  _$$_SessionEventPayloadCopyWith<_$_SessionEventPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

SignParams _$SignParamsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'sessionPropose':
      return SessionProposeParams.fromJson(json);
    case 'approval':
      return ApprovalParams.fromJson(json);
    case 'sessionSettle':
      return SessionSettleParams.fromJson(json);
    case 'sessionRequest':
      return SessionRequestParams.fromJson(json);
    case 'event':
      return EventParams.fromJson(json);
    case 'updateNamespaces':
      return UpdateNamespacesParams.fromJson(json);
    case 'extend':
      return ExtendParams.fromJson(json);
    case 'delete':
      return DeleteParams.fromJson(json);
    case 'ping':
      return PingParams.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SignParams',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SignParams {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignParamsCopyWith<$Res> {
  factory $SignParamsCopyWith(
          SignParams value, $Res Function(SignParams) then) =
      _$SignParamsCopyWithImpl<$Res, SignParams>;
}

/// @nodoc
class _$SignParamsCopyWithImpl<$Res, $Val extends SignParams>
    implements $SignParamsCopyWith<$Res> {
  _$SignParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SessionProposeParamsCopyWith<$Res> {
  factory _$$SessionProposeParamsCopyWith(_$SessionProposeParams value,
          $Res Function(_$SessionProposeParams) then) =
      __$$SessionProposeParamsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<RelayProtocolOptions> relays,
      SessionProposer proposer,
      @JsonKey(name: 'requiredNamespaces')
          Map<String, NamespaceProposal> namespaces});

  $SessionProposerCopyWith<$Res> get proposer;
}

/// @nodoc
class __$$SessionProposeParamsCopyWithImpl<$Res>
    extends _$SignParamsCopyWithImpl<$Res, _$SessionProposeParams>
    implements _$$SessionProposeParamsCopyWith<$Res> {
  __$$SessionProposeParamsCopyWithImpl(_$SessionProposeParams _value,
      $Res Function(_$SessionProposeParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relays = null,
    Object? proposer = null,
    Object? namespaces = null,
  }) {
    return _then(_$SessionProposeParams(
      relays: null == relays
          ? _value._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<RelayProtocolOptions>,
      proposer: null == proposer
          ? _value.proposer
          : proposer // ignore: cast_nullable_to_non_nullable
              as SessionProposer,
      namespaces: null == namespaces
          ? _value._namespaces
          : namespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceProposal>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionProposerCopyWith<$Res> get proposer {
    return $SessionProposerCopyWith<$Res>(_value.proposer, (value) {
      return _then(_value.copyWith(proposer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionProposeParams implements SessionProposeParams {
  const _$SessionProposeParams(
      {required final List<RelayProtocolOptions> relays,
      required this.proposer,
      @JsonKey(name: 'requiredNamespaces')
          required final Map<String, NamespaceProposal> namespaces,
      final String? $type})
      : _relays = relays,
        _namespaces = namespaces,
        $type = $type ?? 'sessionPropose';

  factory _$SessionProposeParams.fromJson(Map<String, dynamic> json) =>
      _$$SessionProposeParamsFromJson(json);

  final List<RelayProtocolOptions> _relays;
  @override
  List<RelayProtocolOptions> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  @override
  final SessionProposer proposer;
  final Map<String, NamespaceProposal> _namespaces;
  @override
  @JsonKey(name: 'requiredNamespaces')
  Map<String, NamespaceProposal> get namespaces {
    if (_namespaces is EqualUnmodifiableMapView) return _namespaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_namespaces);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignParams.sessionPropose(relays: $relays, proposer: $proposer, namespaces: $namespaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionProposeParams &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.proposer, proposer) ||
                other.proposer == proposer) &&
            const DeepCollectionEquality()
                .equals(other._namespaces, _namespaces));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_relays),
      proposer,
      const DeepCollectionEquality().hash(_namespaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionProposeParamsCopyWith<_$SessionProposeParams> get copyWith =>
      __$$SessionProposeParamsCopyWithImpl<_$SessionProposeParams>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return sessionPropose(relays, proposer, namespaces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return sessionPropose?.call(relays, proposer, namespaces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (sessionPropose != null) {
      return sessionPropose(relays, proposer, namespaces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return sessionPropose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return sessionPropose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (sessionPropose != null) {
      return sessionPropose(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionProposeParamsToJson(
      this,
    );
  }
}

abstract class SessionProposeParams implements SignParams {
  const factory SessionProposeParams(
          {required final List<RelayProtocolOptions> relays,
          required final SessionProposer proposer,
          @JsonKey(name: 'requiredNamespaces')
              required final Map<String, NamespaceProposal> namespaces}) =
      _$SessionProposeParams;

  factory SessionProposeParams.fromJson(Map<String, dynamic> json) =
      _$SessionProposeParams.fromJson;

  List<RelayProtocolOptions> get relays;
  SessionProposer get proposer;
  @JsonKey(name: 'requiredNamespaces')
  Map<String, NamespaceProposal> get namespaces;
  @JsonKey(ignore: true)
  _$$SessionProposeParamsCopyWith<_$SessionProposeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApprovalParamsCopyWith<$Res> {
  factory _$$ApprovalParamsCopyWith(
          _$ApprovalParams value, $Res Function(_$ApprovalParams) then) =
      __$$ApprovalParamsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RelayProtocolOptions relay,
      @Uint8ListToHexConverter() Uint8List responderPublicKey});

  $RelayProtocolOptionsCopyWith<$Res> get relay;
}

/// @nodoc
class __$$ApprovalParamsCopyWithImpl<$Res>
    extends _$SignParamsCopyWithImpl<$Res, _$ApprovalParams>
    implements _$$ApprovalParamsCopyWith<$Res> {
  __$$ApprovalParamsCopyWithImpl(
      _$ApprovalParams _value, $Res Function(_$ApprovalParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relay = null,
    Object? responderPublicKey = null,
  }) {
    return _then(_$ApprovalParams(
      relay: null == relay
          ? _value.relay
          : relay // ignore: cast_nullable_to_non_nullable
              as RelayProtocolOptions,
      responderPublicKey: null == responderPublicKey
          ? _value.responderPublicKey
          : responderPublicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RelayProtocolOptionsCopyWith<$Res> get relay {
    return $RelayProtocolOptionsCopyWith<$Res>(_value.relay, (value) {
      return _then(_value.copyWith(relay: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ApprovalParams implements ApprovalParams {
  const _$ApprovalParams(
      {required this.relay,
      @Uint8ListToHexConverter() required this.responderPublicKey,
      final String? $type})
      : $type = $type ?? 'approval';

  factory _$ApprovalParams.fromJson(Map<String, dynamic> json) =>
      _$$ApprovalParamsFromJson(json);

  @override
  final RelayProtocolOptions relay;
  @override
  @Uint8ListToHexConverter()
  final Uint8List responderPublicKey;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignParams.approval(relay: $relay, responderPublicKey: $responderPublicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalParams &&
            (identical(other.relay, relay) || other.relay == relay) &&
            const DeepCollectionEquality()
                .equals(other.responderPublicKey, responderPublicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, relay,
      const DeepCollectionEquality().hash(responderPublicKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalParamsCopyWith<_$ApprovalParams> get copyWith =>
      __$$ApprovalParamsCopyWithImpl<_$ApprovalParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return approval(relay, responderPublicKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return approval?.call(relay, responderPublicKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (approval != null) {
      return approval(relay, responderPublicKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return approval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return approval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (approval != null) {
      return approval(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovalParamsToJson(
      this,
    );
  }
}

abstract class ApprovalParams implements SignParams {
  const factory ApprovalParams(
      {required final RelayProtocolOptions relay,
      @Uint8ListToHexConverter()
          required final Uint8List responderPublicKey}) = _$ApprovalParams;

  factory ApprovalParams.fromJson(Map<String, dynamic> json) =
      _$ApprovalParams.fromJson;

  RelayProtocolOptions get relay;
  @Uint8ListToHexConverter()
  Uint8List get responderPublicKey;
  @JsonKey(ignore: true)
  _$$ApprovalParamsCopyWith<_$ApprovalParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionSettleParamsCopyWith<$Res> {
  factory _$$SessionSettleParamsCopyWith(_$SessionSettleParams value,
          $Res Function(_$SessionSettleParams) then) =
      __$$SessionSettleParamsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RelayProtocolOptions relay,
      SessionProposer controller,
      Map<String, NamespaceSession> namespaces,
      int expiry});

  $RelayProtocolOptionsCopyWith<$Res> get relay;
  $SessionProposerCopyWith<$Res> get controller;
}

/// @nodoc
class __$$SessionSettleParamsCopyWithImpl<$Res>
    extends _$SignParamsCopyWithImpl<$Res, _$SessionSettleParams>
    implements _$$SessionSettleParamsCopyWith<$Res> {
  __$$SessionSettleParamsCopyWithImpl(
      _$SessionSettleParams _value, $Res Function(_$SessionSettleParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relay = null,
    Object? controller = null,
    Object? namespaces = null,
    Object? expiry = null,
  }) {
    return _then(_$SessionSettleParams(
      relay: null == relay
          ? _value.relay
          : relay // ignore: cast_nullable_to_non_nullable
              as RelayProtocolOptions,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as SessionProposer,
      namespaces: null == namespaces
          ? _value._namespaces
          : namespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceSession>,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RelayProtocolOptionsCopyWith<$Res> get relay {
    return $RelayProtocolOptionsCopyWith<$Res>(_value.relay, (value) {
      return _then(_value.copyWith(relay: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionProposerCopyWith<$Res> get controller {
    return $SessionProposerCopyWith<$Res>(_value.controller, (value) {
      return _then(_value.copyWith(controller: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionSettleParams implements SessionSettleParams {
  const _$SessionSettleParams(
      {required this.relay,
      required this.controller,
      required final Map<String, NamespaceSession> namespaces,
      required this.expiry,
      final String? $type})
      : _namespaces = namespaces,
        $type = $type ?? 'sessionSettle';

  factory _$SessionSettleParams.fromJson(Map<String, dynamic> json) =>
      _$$SessionSettleParamsFromJson(json);

  @override
  final RelayProtocolOptions relay;
  @override
  final SessionProposer controller;
  final Map<String, NamespaceSession> _namespaces;
  @override
  Map<String, NamespaceSession> get namespaces {
    if (_namespaces is EqualUnmodifiableMapView) return _namespaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_namespaces);
  }

  @override
  final int expiry;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignParams.sessionSettle(relay: $relay, controller: $controller, namespaces: $namespaces, expiry: $expiry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionSettleParams &&
            (identical(other.relay, relay) || other.relay == relay) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            const DeepCollectionEquality()
                .equals(other._namespaces, _namespaces) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, relay, controller,
      const DeepCollectionEquality().hash(_namespaces), expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionSettleParamsCopyWith<_$SessionSettleParams> get copyWith =>
      __$$SessionSettleParamsCopyWithImpl<_$SessionSettleParams>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return sessionSettle(relay, controller, namespaces, expiry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return sessionSettle?.call(relay, controller, namespaces, expiry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (sessionSettle != null) {
      return sessionSettle(relay, controller, namespaces, expiry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return sessionSettle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return sessionSettle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (sessionSettle != null) {
      return sessionSettle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionSettleParamsToJson(
      this,
    );
  }
}

abstract class SessionSettleParams implements SignParams {
  const factory SessionSettleParams(
      {required final RelayProtocolOptions relay,
      required final SessionProposer controller,
      required final Map<String, NamespaceSession> namespaces,
      required final int expiry}) = _$SessionSettleParams;

  factory SessionSettleParams.fromJson(Map<String, dynamic> json) =
      _$SessionSettleParams.fromJson;

  RelayProtocolOptions get relay;
  SessionProposer get controller;
  Map<String, NamespaceSession> get namespaces;
  int get expiry;
  @JsonKey(ignore: true)
  _$$SessionSettleParamsCopyWith<_$SessionSettleParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionRequestParamsCopyWith<$Res> {
  factory _$$SessionRequestParamsCopyWith(_$SessionRequestParams value,
          $Res Function(_$SessionRequestParams) then) =
      __$$SessionRequestParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({SessionRequestPayload request, String chainId});

  $SessionRequestPayloadCopyWith<$Res> get request;
}

/// @nodoc
class __$$SessionRequestParamsCopyWithImpl<$Res>
    extends _$SignParamsCopyWithImpl<$Res, _$SessionRequestParams>
    implements _$$SessionRequestParamsCopyWith<$Res> {
  __$$SessionRequestParamsCopyWithImpl(_$SessionRequestParams _value,
      $Res Function(_$SessionRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? chainId = null,
  }) {
    return _then(_$SessionRequestParams(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SessionRequestPayload,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionRequestPayloadCopyWith<$Res> get request {
    return $SessionRequestPayloadCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionRequestParams implements SessionRequestParams {
  const _$SessionRequestParams(
      {required this.request, required this.chainId, final String? $type})
      : $type = $type ?? 'sessionRequest';

  factory _$SessionRequestParams.fromJson(Map<String, dynamic> json) =>
      _$$SessionRequestParamsFromJson(json);

  @override
  final SessionRequestPayload request;
  @override
  final String chainId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignParams.sessionRequest(request: $request, chainId: $chainId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionRequestParams &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.chainId, chainId) || other.chainId == chainId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, request, chainId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionRequestParamsCopyWith<_$SessionRequestParams> get copyWith =>
      __$$SessionRequestParamsCopyWithImpl<_$SessionRequestParams>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return sessionRequest(request, chainId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return sessionRequest?.call(request, chainId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (sessionRequest != null) {
      return sessionRequest(request, chainId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return sessionRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return sessionRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (sessionRequest != null) {
      return sessionRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionRequestParamsToJson(
      this,
    );
  }
}

abstract class SessionRequestParams implements SignParams {
  const factory SessionRequestParams(
      {required final SessionRequestPayload request,
      required final String chainId}) = _$SessionRequestParams;

  factory SessionRequestParams.fromJson(Map<String, dynamic> json) =
      _$SessionRequestParams.fromJson;

  SessionRequestPayload get request;
  String get chainId;
  @JsonKey(ignore: true)
  _$$SessionRequestParamsCopyWith<_$SessionRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventParamsCopyWith<$Res> {
  factory _$$EventParamsCopyWith(
          _$EventParams value, $Res Function(_$EventParams) then) =
      __$$EventParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({SessionEventPayload event, String chainId});

  $SessionEventPayloadCopyWith<$Res> get event;
}

/// @nodoc
class __$$EventParamsCopyWithImpl<$Res>
    extends _$SignParamsCopyWithImpl<$Res, _$EventParams>
    implements _$$EventParamsCopyWith<$Res> {
  __$$EventParamsCopyWithImpl(
      _$EventParams _value, $Res Function(_$EventParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? chainId = null,
  }) {
    return _then(_$EventParams(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as SessionEventPayload,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionEventPayloadCopyWith<$Res> get event {
    return $SessionEventPayloadCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$EventParams implements EventParams {
  const _$EventParams(
      {required this.event, required this.chainId, final String? $type})
      : $type = $type ?? 'event';

  factory _$EventParams.fromJson(Map<String, dynamic> json) =>
      _$$EventParamsFromJson(json);

  @override
  final SessionEventPayload event;
  @override
  final String chainId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignParams.event(event: $event, chainId: $chainId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventParams &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.chainId, chainId) || other.chainId == chainId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, event, chainId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventParamsCopyWith<_$EventParams> get copyWith =>
      __$$EventParamsCopyWithImpl<_$EventParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return event(this.event, chainId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return event?.call(this.event, chainId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this.event, chainId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EventParamsToJson(
      this,
    );
  }
}

abstract class EventParams implements SignParams {
  const factory EventParams(
      {required final SessionEventPayload event,
      required final String chainId}) = _$EventParams;

  factory EventParams.fromJson(Map<String, dynamic> json) =
      _$EventParams.fromJson;

  SessionEventPayload get event;
  String get chainId;
  @JsonKey(ignore: true)
  _$$EventParamsCopyWith<_$EventParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNamespacesParamsCopyWith<$Res> {
  factory _$$UpdateNamespacesParamsCopyWith(_$UpdateNamespacesParams value,
          $Res Function(_$UpdateNamespacesParams) then) =
      __$$UpdateNamespacesParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, NamespaceSession> namespaces});
}

/// @nodoc
class __$$UpdateNamespacesParamsCopyWithImpl<$Res>
    extends _$SignParamsCopyWithImpl<$Res, _$UpdateNamespacesParams>
    implements _$$UpdateNamespacesParamsCopyWith<$Res> {
  __$$UpdateNamespacesParamsCopyWithImpl(_$UpdateNamespacesParams _value,
      $Res Function(_$UpdateNamespacesParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespaces = null,
  }) {
    return _then(_$UpdateNamespacesParams(
      namespaces: null == namespaces
          ? _value._namespaces
          : namespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceSession>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateNamespacesParams implements UpdateNamespacesParams {
  const _$UpdateNamespacesParams(
      {required final Map<String, NamespaceSession> namespaces,
      final String? $type})
      : _namespaces = namespaces,
        $type = $type ?? 'updateNamespaces';

  factory _$UpdateNamespacesParams.fromJson(Map<String, dynamic> json) =>
      _$$UpdateNamespacesParamsFromJson(json);

  final Map<String, NamespaceSession> _namespaces;
  @override
  Map<String, NamespaceSession> get namespaces {
    if (_namespaces is EqualUnmodifiableMapView) return _namespaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_namespaces);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignParams.updateNamespaces(namespaces: $namespaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNamespacesParams &&
            const DeepCollectionEquality()
                .equals(other._namespaces, _namespaces));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_namespaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNamespacesParamsCopyWith<_$UpdateNamespacesParams> get copyWith =>
      __$$UpdateNamespacesParamsCopyWithImpl<_$UpdateNamespacesParams>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return updateNamespaces(namespaces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return updateNamespaces?.call(namespaces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (updateNamespaces != null) {
      return updateNamespaces(namespaces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return updateNamespaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return updateNamespaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (updateNamespaces != null) {
      return updateNamespaces(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateNamespacesParamsToJson(
      this,
    );
  }
}

abstract class UpdateNamespacesParams implements SignParams {
  const factory UpdateNamespacesParams(
          {required final Map<String, NamespaceSession> namespaces}) =
      _$UpdateNamespacesParams;

  factory UpdateNamespacesParams.fromJson(Map<String, dynamic> json) =
      _$UpdateNamespacesParams.fromJson;

  Map<String, NamespaceSession> get namespaces;
  @JsonKey(ignore: true)
  _$$UpdateNamespacesParamsCopyWith<_$UpdateNamespacesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExtendParamsCopyWith<$Res> {
  factory _$$ExtendParamsCopyWith(
          _$ExtendParams value, $Res Function(_$ExtendParams) then) =
      __$$ExtendParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({int expiry});
}

/// @nodoc
class __$$ExtendParamsCopyWithImpl<$Res>
    extends _$SignParamsCopyWithImpl<$Res, _$ExtendParams>
    implements _$$ExtendParamsCopyWith<$Res> {
  __$$ExtendParamsCopyWithImpl(
      _$ExtendParams _value, $Res Function(_$ExtendParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiry = null,
  }) {
    return _then(_$ExtendParams(
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtendParams implements ExtendParams {
  const _$ExtendParams({required this.expiry, final String? $type})
      : $type = $type ?? 'extend';

  factory _$ExtendParams.fromJson(Map<String, dynamic> json) =>
      _$$ExtendParamsFromJson(json);

  @override
  final int expiry;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignParams.extend(expiry: $expiry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendParams &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtendParamsCopyWith<_$ExtendParams> get copyWith =>
      __$$ExtendParamsCopyWithImpl<_$ExtendParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return extend(expiry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return extend?.call(expiry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (extend != null) {
      return extend(expiry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return extend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return extend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (extend != null) {
      return extend(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtendParamsToJson(
      this,
    );
  }
}

abstract class ExtendParams implements SignParams {
  const factory ExtendParams({required final int expiry}) = _$ExtendParams;

  factory ExtendParams.fromJson(Map<String, dynamic> json) =
      _$ExtendParams.fromJson;

  int get expiry;
  @JsonKey(ignore: true)
  _$$ExtendParamsCopyWith<_$ExtendParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteParamsCopyWith<$Res> {
  factory _$$DeleteParamsCopyWith(
          _$DeleteParams value, $Res Function(_$DeleteParams) then) =
      __$$DeleteParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class __$$DeleteParamsCopyWithImpl<$Res>
    extends _$SignParamsCopyWithImpl<$Res, _$DeleteParams>
    implements _$$DeleteParamsCopyWith<$Res> {
  __$$DeleteParamsCopyWithImpl(
      _$DeleteParams _value, $Res Function(_$DeleteParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$DeleteParams(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteParams implements DeleteParams {
  const _$DeleteParams(
      {this.code = -1, required this.message, final String? $type})
      : $type = $type ?? 'delete';

  factory _$DeleteParams.fromJson(Map<String, dynamic> json) =>
      _$$DeleteParamsFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignParams.delete(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteParams &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteParamsCopyWith<_$DeleteParams> get copyWith =>
      __$$DeleteParamsCopyWithImpl<_$DeleteParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return delete(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return delete?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteParamsToJson(
      this,
    );
  }
}

abstract class DeleteParams implements SignParams {
  const factory DeleteParams({final int code, required final String message}) =
      _$DeleteParams;

  factory DeleteParams.fromJson(Map<String, dynamic> json) =
      _$DeleteParams.fromJson;

  int get code;
  String get message;
  @JsonKey(ignore: true)
  _$$DeleteParamsCopyWith<_$DeleteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PingParamsCopyWith<$Res> {
  factory _$$PingParamsCopyWith(
          _$PingParams value, $Res Function(_$PingParams) then) =
      __$$PingParamsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PingParamsCopyWithImpl<$Res>
    extends _$SignParamsCopyWithImpl<$Res, _$PingParams>
    implements _$$PingParamsCopyWith<$Res> {
  __$$PingParamsCopyWithImpl(
      _$PingParams _value, $Res Function(_$PingParams) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PingParams implements PingParams {
  const _$PingParams({final String? $type}) : $type = $type ?? 'ping';

  factory _$PingParams.fromJson(Map<String, dynamic> json) =>
      _$$PingParamsFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignParams.ping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PingParams);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)
        sessionPropose,
    required TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)
        approval,
    required TResult Function(
            RelayProtocolOptions relay,
            SessionProposer controller,
            Map<String, NamespaceSession> namespaces,
            int expiry)
        sessionSettle,
    required TResult Function(SessionRequestPayload request, String chainId)
        sessionRequest,
    required TResult Function(SessionEventPayload event, String chainId) event,
    required TResult Function(Map<String, NamespaceSession> namespaces)
        updateNamespaces,
    required TResult Function(int expiry) extend,
    required TResult Function(int code, String message) delete,
    required TResult Function() ping,
  }) {
    return ping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult? Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult? Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult? Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult? Function(SessionEventPayload event, String chainId)? event,
    TResult? Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult? Function(int expiry)? extend,
    TResult? Function(int code, String message)? delete,
    TResult? Function()? ping,
  }) {
    return ping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RelayProtocolOptions> relays,
            SessionProposer proposer,
            @JsonKey(name: 'requiredNamespaces')
                Map<String, NamespaceProposal> namespaces)?
        sessionPropose,
    TResult Function(RelayProtocolOptions relay,
            @Uint8ListToHexConverter() Uint8List responderPublicKey)?
        approval,
    TResult Function(RelayProtocolOptions relay, SessionProposer controller,
            Map<String, NamespaceSession> namespaces, int expiry)?
        sessionSettle,
    TResult Function(SessionRequestPayload request, String chainId)?
        sessionRequest,
    TResult Function(SessionEventPayload event, String chainId)? event,
    TResult Function(Map<String, NamespaceSession> namespaces)?
        updateNamespaces,
    TResult Function(int expiry)? extend,
    TResult Function(int code, String message)? delete,
    TResult Function()? ping,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionProposeParams value) sessionPropose,
    required TResult Function(ApprovalParams value) approval,
    required TResult Function(SessionSettleParams value) sessionSettle,
    required TResult Function(SessionRequestParams value) sessionRequest,
    required TResult Function(EventParams value) event,
    required TResult Function(UpdateNamespacesParams value) updateNamespaces,
    required TResult Function(ExtendParams value) extend,
    required TResult Function(DeleteParams value) delete,
    required TResult Function(PingParams value) ping,
  }) {
    return ping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionProposeParams value)? sessionPropose,
    TResult? Function(ApprovalParams value)? approval,
    TResult? Function(SessionSettleParams value)? sessionSettle,
    TResult? Function(SessionRequestParams value)? sessionRequest,
    TResult? Function(EventParams value)? event,
    TResult? Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult? Function(ExtendParams value)? extend,
    TResult? Function(DeleteParams value)? delete,
    TResult? Function(PingParams value)? ping,
  }) {
    return ping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionProposeParams value)? sessionPropose,
    TResult Function(ApprovalParams value)? approval,
    TResult Function(SessionSettleParams value)? sessionSettle,
    TResult Function(SessionRequestParams value)? sessionRequest,
    TResult Function(EventParams value)? event,
    TResult Function(UpdateNamespacesParams value)? updateNamespaces,
    TResult Function(ExtendParams value)? extend,
    TResult Function(DeleteParams value)? delete,
    TResult Function(PingParams value)? ping,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PingParamsToJson(
      this,
    );
  }
}

abstract class PingParams implements SignParams {
  const factory PingParams() = _$PingParams;

  factory PingParams.fromJson(Map<String, dynamic> json) =
      _$PingParams.fromJson;
}
