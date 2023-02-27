// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

_SessionForStore _$_SessionForStoreFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'session':
      return _Session.fromJson(json);
    case 'tempNamespaces':
      return _TempNamespaces.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', '_SessionForStore',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$_SessionForStore {
  @TopicConverter()
  String get topic => throw _privateConstructorUsedError;
  int get requestId => throw _privateConstructorUsedError;
  Map<String, NamespaceSession> get namespaces =>
      throw _privateConstructorUsedError;
  bool get isAcknowledged => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TopicConverter() String topic,
            @TopicConverter() String pairingTopic,
            @ExpiryConverter() Duration expiry,
            String relayProtocol,
            int requestId,
            String? relayData,
            @Uint8ListToHexConverter() Uint8List? controllerKey,
            @Uint8ListToHexConverter() Uint8List selfPublicKey,
            AppMetaData? selfAppMetaData,
            @Uint8ListToHexConverter() Uint8List? peerPublicKey,
            AppMetaData? peerAppMetaData,
            Map<String, NamespaceSession> namespaces,
            Map<String, NamespaceProposal> proposalNamespaces,
            bool isAcknowledged)
        session,
    required TResult Function(@TopicConverter() String topic, int requestId,
            bool isAcknowledged, Map<String, NamespaceSession> namespaces)
        tempNamespaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TopicConverter() String topic,
            @TopicConverter() String pairingTopic,
            @ExpiryConverter() Duration expiry,
            String relayProtocol,
            int requestId,
            String? relayData,
            @Uint8ListToHexConverter() Uint8List? controllerKey,
            @Uint8ListToHexConverter() Uint8List selfPublicKey,
            AppMetaData? selfAppMetaData,
            @Uint8ListToHexConverter() Uint8List? peerPublicKey,
            AppMetaData? peerAppMetaData,
            Map<String, NamespaceSession> namespaces,
            Map<String, NamespaceProposal> proposalNamespaces,
            bool isAcknowledged)?
        session,
    TResult? Function(@TopicConverter() String topic, int requestId,
            bool isAcknowledged, Map<String, NamespaceSession> namespaces)?
        tempNamespaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TopicConverter() String topic,
            @TopicConverter() String pairingTopic,
            @ExpiryConverter() Duration expiry,
            String relayProtocol,
            int requestId,
            String? relayData,
            @Uint8ListToHexConverter() Uint8List? controllerKey,
            @Uint8ListToHexConverter() Uint8List selfPublicKey,
            AppMetaData? selfAppMetaData,
            @Uint8ListToHexConverter() Uint8List? peerPublicKey,
            AppMetaData? peerAppMetaData,
            Map<String, NamespaceSession> namespaces,
            Map<String, NamespaceProposal> proposalNamespaces,
            bool isAcknowledged)?
        session,
    TResult Function(@TopicConverter() String topic, int requestId,
            bool isAcknowledged, Map<String, NamespaceSession> namespaces)?
        tempNamespaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Session value) session,
    required TResult Function(_TempNamespaces value) tempNamespaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Session value)? session,
    TResult? Function(_TempNamespaces value)? tempNamespaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Session value)? session,
    TResult Function(_TempNamespaces value)? tempNamespaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SessionForStoreCopyWith<_SessionForStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SessionForStoreCopyWith<$Res> {
  factory _$SessionForStoreCopyWith(
          _SessionForStore value, $Res Function(_SessionForStore) then) =
      __$SessionForStoreCopyWithImpl<$Res, _SessionForStore>;
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      int requestId,
      Map<String, NamespaceSession> namespaces,
      bool isAcknowledged});
}

/// @nodoc
class __$SessionForStoreCopyWithImpl<$Res, $Val extends _SessionForStore>
    implements _$SessionForStoreCopyWith<$Res> {
  __$SessionForStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? requestId = null,
    Object? namespaces = null,
    Object? isAcknowledged = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      namespaces: null == namespaces
          ? _value.namespaces
          : namespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceSession>,
      isAcknowledged: null == isAcknowledged
          ? _value.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionCopyWith<$Res>
    implements _$SessionForStoreCopyWith<$Res> {
  factory _$$_SessionCopyWith(
          _$_Session value, $Res Function(_$_Session) then) =
      __$$_SessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      @TopicConverter() String pairingTopic,
      @ExpiryConverter() Duration expiry,
      String relayProtocol,
      int requestId,
      String? relayData,
      @Uint8ListToHexConverter() Uint8List? controllerKey,
      @Uint8ListToHexConverter() Uint8List selfPublicKey,
      AppMetaData? selfAppMetaData,
      @Uint8ListToHexConverter() Uint8List? peerPublicKey,
      AppMetaData? peerAppMetaData,
      Map<String, NamespaceSession> namespaces,
      Map<String, NamespaceProposal> proposalNamespaces,
      bool isAcknowledged});

  $AppMetaDataCopyWith<$Res>? get selfAppMetaData;
  $AppMetaDataCopyWith<$Res>? get peerAppMetaData;
}

/// @nodoc
class __$$_SessionCopyWithImpl<$Res>
    extends __$SessionForStoreCopyWithImpl<$Res, _$_Session>
    implements _$$_SessionCopyWith<$Res> {
  __$$_SessionCopyWithImpl(_$_Session _value, $Res Function(_$_Session) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? pairingTopic = null,
    Object? expiry = null,
    Object? relayProtocol = null,
    Object? requestId = null,
    Object? relayData = freezed,
    Object? controllerKey = freezed,
    Object? selfPublicKey = null,
    Object? selfAppMetaData = freezed,
    Object? peerPublicKey = freezed,
    Object? peerAppMetaData = freezed,
    Object? namespaces = null,
    Object? proposalNamespaces = null,
    Object? isAcknowledged = null,
  }) {
    return _then(_$_Session(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      pairingTopic: null == pairingTopic
          ? _value.pairingTopic
          : pairingTopic // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as Duration,
      relayProtocol: null == relayProtocol
          ? _value.relayProtocol
          : relayProtocol // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      relayData: freezed == relayData
          ? _value.relayData
          : relayData // ignore: cast_nullable_to_non_nullable
              as String?,
      controllerKey: freezed == controllerKey
          ? _value.controllerKey
          : controllerKey // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      selfPublicKey: null == selfPublicKey
          ? _value.selfPublicKey
          : selfPublicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      selfAppMetaData: freezed == selfAppMetaData
          ? _value.selfAppMetaData
          : selfAppMetaData // ignore: cast_nullable_to_non_nullable
              as AppMetaData?,
      peerPublicKey: freezed == peerPublicKey
          ? _value.peerPublicKey
          : peerPublicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      peerAppMetaData: freezed == peerAppMetaData
          ? _value.peerAppMetaData
          : peerAppMetaData // ignore: cast_nullable_to_non_nullable
              as AppMetaData?,
      namespaces: null == namespaces
          ? _value._namespaces
          : namespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceSession>,
      proposalNamespaces: null == proposalNamespaces
          ? _value._proposalNamespaces
          : proposalNamespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceProposal>,
      isAcknowledged: null == isAcknowledged
          ? _value.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetaDataCopyWith<$Res>? get selfAppMetaData {
    if (_value.selfAppMetaData == null) {
      return null;
    }

    return $AppMetaDataCopyWith<$Res>(_value.selfAppMetaData!, (value) {
      return _then(_value.copyWith(selfAppMetaData: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetaDataCopyWith<$Res>? get peerAppMetaData {
    if (_value.peerAppMetaData == null) {
      return null;
    }

    return $AppMetaDataCopyWith<$Res>(_value.peerAppMetaData!, (value) {
      return _then(_value.copyWith(peerAppMetaData: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_Session extends _Session {
  const _$_Session(
      {@TopicConverter() required this.topic,
      @TopicConverter() required this.pairingTopic,
      @ExpiryConverter() required this.expiry,
      required this.relayProtocol,
      required this.requestId,
      this.relayData,
      @Uint8ListToHexConverter() this.controllerKey,
      @Uint8ListToHexConverter() required this.selfPublicKey,
      this.selfAppMetaData,
      @Uint8ListToHexConverter() this.peerPublicKey,
      this.peerAppMetaData,
      required final Map<String, NamespaceSession> namespaces,
      required final Map<String, NamespaceProposal> proposalNamespaces,
      this.isAcknowledged = false,
      final String? $type})
      : _namespaces = namespaces,
        _proposalNamespaces = proposalNamespaces,
        $type = $type ?? 'session',
        super._();

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$$_SessionFromJson(json);

  @override
  @TopicConverter()
  final String topic;
  @override
  @TopicConverter()
  final String pairingTopic;
  @override
  @ExpiryConverter()
  final Duration expiry;
  @override
  final String relayProtocol;
  @override
  final int requestId;
  @override
  final String? relayData;
  @override
  @Uint8ListToHexConverter()
  final Uint8List? controllerKey;
  @override
  @Uint8ListToHexConverter()
  final Uint8List selfPublicKey;
  @override
  final AppMetaData? selfAppMetaData;
  @override
  @Uint8ListToHexConverter()
  final Uint8List? peerPublicKey;
  @override
  final AppMetaData? peerAppMetaData;
  final Map<String, NamespaceSession> _namespaces;
  @override
  Map<String, NamespaceSession> get namespaces {
    if (_namespaces is EqualUnmodifiableMapView) return _namespaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_namespaces);
  }

  final Map<String, NamespaceProposal> _proposalNamespaces;
  @override
  Map<String, NamespaceProposal> get proposalNamespaces {
    if (_proposalNamespaces is EqualUnmodifiableMapView)
      return _proposalNamespaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_proposalNamespaces);
  }

  @override
  @JsonKey()
  final bool isAcknowledged;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return '_SessionForStore.session(topic: $topic, pairingTopic: $pairingTopic, expiry: $expiry, relayProtocol: $relayProtocol, requestId: $requestId, relayData: $relayData, controllerKey: $controllerKey, selfPublicKey: $selfPublicKey, selfAppMetaData: $selfAppMetaData, peerPublicKey: $peerPublicKey, peerAppMetaData: $peerAppMetaData, namespaces: $namespaces, proposalNamespaces: $proposalNamespaces, isAcknowledged: $isAcknowledged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Session &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.pairingTopic, pairingTopic) ||
                other.pairingTopic == pairingTopic) &&
            (identical(other.expiry, expiry) || other.expiry == expiry) &&
            (identical(other.relayProtocol, relayProtocol) ||
                other.relayProtocol == relayProtocol) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.relayData, relayData) ||
                other.relayData == relayData) &&
            const DeepCollectionEquality()
                .equals(other.controllerKey, controllerKey) &&
            const DeepCollectionEquality()
                .equals(other.selfPublicKey, selfPublicKey) &&
            (identical(other.selfAppMetaData, selfAppMetaData) ||
                other.selfAppMetaData == selfAppMetaData) &&
            const DeepCollectionEquality()
                .equals(other.peerPublicKey, peerPublicKey) &&
            (identical(other.peerAppMetaData, peerAppMetaData) ||
                other.peerAppMetaData == peerAppMetaData) &&
            const DeepCollectionEquality()
                .equals(other._namespaces, _namespaces) &&
            const DeepCollectionEquality()
                .equals(other._proposalNamespaces, _proposalNamespaces) &&
            (identical(other.isAcknowledged, isAcknowledged) ||
                other.isAcknowledged == isAcknowledged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      topic,
      pairingTopic,
      expiry,
      relayProtocol,
      requestId,
      relayData,
      const DeepCollectionEquality().hash(controllerKey),
      const DeepCollectionEquality().hash(selfPublicKey),
      selfAppMetaData,
      const DeepCollectionEquality().hash(peerPublicKey),
      peerAppMetaData,
      const DeepCollectionEquality().hash(_namespaces),
      const DeepCollectionEquality().hash(_proposalNamespaces),
      isAcknowledged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      __$$_SessionCopyWithImpl<_$_Session>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TopicConverter() String topic,
            @TopicConverter() String pairingTopic,
            @ExpiryConverter() Duration expiry,
            String relayProtocol,
            int requestId,
            String? relayData,
            @Uint8ListToHexConverter() Uint8List? controllerKey,
            @Uint8ListToHexConverter() Uint8List selfPublicKey,
            AppMetaData? selfAppMetaData,
            @Uint8ListToHexConverter() Uint8List? peerPublicKey,
            AppMetaData? peerAppMetaData,
            Map<String, NamespaceSession> namespaces,
            Map<String, NamespaceProposal> proposalNamespaces,
            bool isAcknowledged)
        session,
    required TResult Function(@TopicConverter() String topic, int requestId,
            bool isAcknowledged, Map<String, NamespaceSession> namespaces)
        tempNamespaces,
  }) {
    return session(
        topic,
        pairingTopic,
        expiry,
        relayProtocol,
        requestId,
        relayData,
        controllerKey,
        selfPublicKey,
        selfAppMetaData,
        peerPublicKey,
        peerAppMetaData,
        namespaces,
        proposalNamespaces,
        isAcknowledged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TopicConverter() String topic,
            @TopicConverter() String pairingTopic,
            @ExpiryConverter() Duration expiry,
            String relayProtocol,
            int requestId,
            String? relayData,
            @Uint8ListToHexConverter() Uint8List? controllerKey,
            @Uint8ListToHexConverter() Uint8List selfPublicKey,
            AppMetaData? selfAppMetaData,
            @Uint8ListToHexConverter() Uint8List? peerPublicKey,
            AppMetaData? peerAppMetaData,
            Map<String, NamespaceSession> namespaces,
            Map<String, NamespaceProposal> proposalNamespaces,
            bool isAcknowledged)?
        session,
    TResult? Function(@TopicConverter() String topic, int requestId,
            bool isAcknowledged, Map<String, NamespaceSession> namespaces)?
        tempNamespaces,
  }) {
    return session?.call(
        topic,
        pairingTopic,
        expiry,
        relayProtocol,
        requestId,
        relayData,
        controllerKey,
        selfPublicKey,
        selfAppMetaData,
        peerPublicKey,
        peerAppMetaData,
        namespaces,
        proposalNamespaces,
        isAcknowledged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TopicConverter() String topic,
            @TopicConverter() String pairingTopic,
            @ExpiryConverter() Duration expiry,
            String relayProtocol,
            int requestId,
            String? relayData,
            @Uint8ListToHexConverter() Uint8List? controllerKey,
            @Uint8ListToHexConverter() Uint8List selfPublicKey,
            AppMetaData? selfAppMetaData,
            @Uint8ListToHexConverter() Uint8List? peerPublicKey,
            AppMetaData? peerAppMetaData,
            Map<String, NamespaceSession> namespaces,
            Map<String, NamespaceProposal> proposalNamespaces,
            bool isAcknowledged)?
        session,
    TResult Function(@TopicConverter() String topic, int requestId,
            bool isAcknowledged, Map<String, NamespaceSession> namespaces)?
        tempNamespaces,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(
          topic,
          pairingTopic,
          expiry,
          relayProtocol,
          requestId,
          relayData,
          controllerKey,
          selfPublicKey,
          selfAppMetaData,
          peerPublicKey,
          peerAppMetaData,
          namespaces,
          proposalNamespaces,
          isAcknowledged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Session value) session,
    required TResult Function(_TempNamespaces value) tempNamespaces,
  }) {
    return session(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Session value)? session,
    TResult? Function(_TempNamespaces value)? tempNamespaces,
  }) {
    return session?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Session value)? session,
    TResult Function(_TempNamespaces value)? tempNamespaces,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionToJson(
      this,
    );
  }
}

abstract class _Session extends _SessionForStore {
  const factory _Session(
      {@TopicConverter() required final String topic,
      @TopicConverter() required final String pairingTopic,
      @ExpiryConverter() required final Duration expiry,
      required final String relayProtocol,
      required final int requestId,
      final String? relayData,
      @Uint8ListToHexConverter() final Uint8List? controllerKey,
      @Uint8ListToHexConverter() required final Uint8List selfPublicKey,
      final AppMetaData? selfAppMetaData,
      @Uint8ListToHexConverter() final Uint8List? peerPublicKey,
      final AppMetaData? peerAppMetaData,
      required final Map<String, NamespaceSession> namespaces,
      required final Map<String, NamespaceProposal> proposalNamespaces,
      final bool isAcknowledged}) = _$_Session;
  const _Session._() : super._();

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  @TopicConverter()
  String get topic;
  @TopicConverter()
  String get pairingTopic;
  @ExpiryConverter()
  Duration get expiry;
  String get relayProtocol;
  @override
  int get requestId;
  String? get relayData;
  @Uint8ListToHexConverter()
  Uint8List? get controllerKey;
  @Uint8ListToHexConverter()
  Uint8List get selfPublicKey;
  AppMetaData? get selfAppMetaData;
  @Uint8ListToHexConverter()
  Uint8List? get peerPublicKey;
  AppMetaData? get peerAppMetaData;
  @override
  Map<String, NamespaceSession> get namespaces;
  Map<String, NamespaceProposal> get proposalNamespaces;
  @override
  bool get isAcknowledged;
  @override
  @JsonKey(ignore: true)
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TempNamespacesCopyWith<$Res>
    implements _$SessionForStoreCopyWith<$Res> {
  factory _$$_TempNamespacesCopyWith(
          _$_TempNamespaces value, $Res Function(_$_TempNamespaces) then) =
      __$$_TempNamespacesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      int requestId,
      bool isAcknowledged,
      Map<String, NamespaceSession> namespaces});
}

/// @nodoc
class __$$_TempNamespacesCopyWithImpl<$Res>
    extends __$SessionForStoreCopyWithImpl<$Res, _$_TempNamespaces>
    implements _$$_TempNamespacesCopyWith<$Res> {
  __$$_TempNamespacesCopyWithImpl(
      _$_TempNamespaces _value, $Res Function(_$_TempNamespaces) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? requestId = null,
    Object? isAcknowledged = null,
    Object? namespaces = null,
  }) {
    return _then(_$_TempNamespaces(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      isAcknowledged: null == isAcknowledged
          ? _value.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool,
      namespaces: null == namespaces
          ? _value._namespaces
          : namespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceSession>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TempNamespaces extends _TempNamespaces {
  const _$_TempNamespaces(
      {@TopicConverter() required this.topic,
      required this.requestId,
      this.isAcknowledged = false,
      required final Map<String, NamespaceSession> namespaces,
      final String? $type})
      : _namespaces = namespaces,
        $type = $type ?? 'tempNamespaces',
        super._();

  factory _$_TempNamespaces.fromJson(Map<String, dynamic> json) =>
      _$$_TempNamespacesFromJson(json);

  @override
  @TopicConverter()
  final String topic;
  @override
  final int requestId;
  @override
  @JsonKey()
  final bool isAcknowledged;
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
    return '_SessionForStore.tempNamespaces(topic: $topic, requestId: $requestId, isAcknowledged: $isAcknowledged, namespaces: $namespaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TempNamespaces &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.isAcknowledged, isAcknowledged) ||
                other.isAcknowledged == isAcknowledged) &&
            const DeepCollectionEquality()
                .equals(other._namespaces, _namespaces));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, requestId, isAcknowledged,
      const DeepCollectionEquality().hash(_namespaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TempNamespacesCopyWith<_$_TempNamespaces> get copyWith =>
      __$$_TempNamespacesCopyWithImpl<_$_TempNamespaces>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TopicConverter() String topic,
            @TopicConverter() String pairingTopic,
            @ExpiryConverter() Duration expiry,
            String relayProtocol,
            int requestId,
            String? relayData,
            @Uint8ListToHexConverter() Uint8List? controllerKey,
            @Uint8ListToHexConverter() Uint8List selfPublicKey,
            AppMetaData? selfAppMetaData,
            @Uint8ListToHexConverter() Uint8List? peerPublicKey,
            AppMetaData? peerAppMetaData,
            Map<String, NamespaceSession> namespaces,
            Map<String, NamespaceProposal> proposalNamespaces,
            bool isAcknowledged)
        session,
    required TResult Function(@TopicConverter() String topic, int requestId,
            bool isAcknowledged, Map<String, NamespaceSession> namespaces)
        tempNamespaces,
  }) {
    return tempNamespaces(topic, requestId, isAcknowledged, namespaces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TopicConverter() String topic,
            @TopicConverter() String pairingTopic,
            @ExpiryConverter() Duration expiry,
            String relayProtocol,
            int requestId,
            String? relayData,
            @Uint8ListToHexConverter() Uint8List? controllerKey,
            @Uint8ListToHexConverter() Uint8List selfPublicKey,
            AppMetaData? selfAppMetaData,
            @Uint8ListToHexConverter() Uint8List? peerPublicKey,
            AppMetaData? peerAppMetaData,
            Map<String, NamespaceSession> namespaces,
            Map<String, NamespaceProposal> proposalNamespaces,
            bool isAcknowledged)?
        session,
    TResult? Function(@TopicConverter() String topic, int requestId,
            bool isAcknowledged, Map<String, NamespaceSession> namespaces)?
        tempNamespaces,
  }) {
    return tempNamespaces?.call(topic, requestId, isAcknowledged, namespaces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TopicConverter() String topic,
            @TopicConverter() String pairingTopic,
            @ExpiryConverter() Duration expiry,
            String relayProtocol,
            int requestId,
            String? relayData,
            @Uint8ListToHexConverter() Uint8List? controllerKey,
            @Uint8ListToHexConverter() Uint8List selfPublicKey,
            AppMetaData? selfAppMetaData,
            @Uint8ListToHexConverter() Uint8List? peerPublicKey,
            AppMetaData? peerAppMetaData,
            Map<String, NamespaceSession> namespaces,
            Map<String, NamespaceProposal> proposalNamespaces,
            bool isAcknowledged)?
        session,
    TResult Function(@TopicConverter() String topic, int requestId,
            bool isAcknowledged, Map<String, NamespaceSession> namespaces)?
        tempNamespaces,
    required TResult orElse(),
  }) {
    if (tempNamespaces != null) {
      return tempNamespaces(topic, requestId, isAcknowledged, namespaces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Session value) session,
    required TResult Function(_TempNamespaces value) tempNamespaces,
  }) {
    return tempNamespaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Session value)? session,
    TResult? Function(_TempNamespaces value)? tempNamespaces,
  }) {
    return tempNamespaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Session value)? session,
    TResult Function(_TempNamespaces value)? tempNamespaces,
    required TResult orElse(),
  }) {
    if (tempNamespaces != null) {
      return tempNamespaces(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempNamespacesToJson(
      this,
    );
  }
}

abstract class _TempNamespaces extends _SessionForStore {
  const factory _TempNamespaces(
          {@TopicConverter() required final String topic,
          required final int requestId,
          final bool isAcknowledged,
          required final Map<String, NamespaceSession> namespaces}) =
      _$_TempNamespaces;
  const _TempNamespaces._() : super._();

  factory _TempNamespaces.fromJson(Map<String, dynamic> json) =
      _$_TempNamespaces.fromJson;

  @override
  @TopicConverter()
  String get topic;
  @override
  int get requestId;
  @override
  bool get isAcknowledged;
  @override
  Map<String, NamespaceSession> get namespaces;
  @override
  @JsonKey(ignore: true)
  _$$_TempNamespacesCopyWith<_$_TempNamespaces> get copyWith =>
      throw _privateConstructorUsedError;
}
