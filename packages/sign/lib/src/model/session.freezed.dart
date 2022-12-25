// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  @TopicConverter()
  String get topic => throw _privateConstructorUsedError;
  @ExpiryConverter()
  Duration get expiry => throw _privateConstructorUsedError;
  String get relayProtocol => throw _privateConstructorUsedError;
  String? get relayData => throw _privateConstructorUsedError;
  @Uint8ListToHexConverter()
  Uint8List? get controllerKey => throw _privateConstructorUsedError;
  @Uint8ListToHexConverter()
  Uint8List get selfPublicKey => throw _privateConstructorUsedError;
  AppMetaData? get selfAppMetaData => throw _privateConstructorUsedError;
  @Uint8ListToHexConverter()
  Uint8List? get peerPublicKey => throw _privateConstructorUsedError;
  AppMetaData? get peerAppMetaData => throw _privateConstructorUsedError;
  Map<String, NamespaceSession> get namespaces =>
      throw _privateConstructorUsedError;
  Map<String, NamespaceProposal> get proposalNamespaces =>
      throw _privateConstructorUsedError;
  bool get isAcknowledged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      @ExpiryConverter() Duration expiry,
      String relayProtocol,
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
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? expiry = null,
    Object? relayProtocol = null,
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
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as Duration,
      relayProtocol: null == relayProtocol
          ? _value.relayProtocol
          : relayProtocol // ignore: cast_nullable_to_non_nullable
              as String,
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
          ? _value.namespaces
          : namespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceSession>,
      proposalNamespaces: null == proposalNamespaces
          ? _value.proposalNamespaces
          : proposalNamespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceProposal>,
      isAcknowledged: null == isAcknowledged
          ? _value.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetaDataCopyWith<$Res>? get selfAppMetaData {
    if (_value.selfAppMetaData == null) {
      return null;
    }

    return $AppMetaDataCopyWith<$Res>(_value.selfAppMetaData!, (value) {
      return _then(_value.copyWith(selfAppMetaData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetaDataCopyWith<$Res>? get peerAppMetaData {
    if (_value.peerAppMetaData == null) {
      return null;
    }

    return $AppMetaDataCopyWith<$Res>(_value.peerAppMetaData!, (value) {
      return _then(_value.copyWith(peerAppMetaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$_SessionCopyWith(
          _$_Session value, $Res Function(_$_Session) then) =
      __$$_SessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      @ExpiryConverter() Duration expiry,
      String relayProtocol,
      String? relayData,
      @Uint8ListToHexConverter() Uint8List? controllerKey,
      @Uint8ListToHexConverter() Uint8List selfPublicKey,
      AppMetaData? selfAppMetaData,
      @Uint8ListToHexConverter() Uint8List? peerPublicKey,
      AppMetaData? peerAppMetaData,
      Map<String, NamespaceSession> namespaces,
      Map<String, NamespaceProposal> proposalNamespaces,
      bool isAcknowledged});

  @override
  $AppMetaDataCopyWith<$Res>? get selfAppMetaData;
  @override
  $AppMetaDataCopyWith<$Res>? get peerAppMetaData;
}

/// @nodoc
class __$$_SessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$_Session>
    implements _$$_SessionCopyWith<$Res> {
  __$$_SessionCopyWithImpl(_$_Session _value, $Res Function(_$_Session) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? expiry = null,
    Object? relayProtocol = null,
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
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as Duration,
      relayProtocol: null == relayProtocol
          ? _value.relayProtocol
          : relayProtocol // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
@JsonSerializable()
class _$_Session extends _Session {
  const _$_Session(
      {@TopicConverter() required this.topic,
      @ExpiryConverter() required this.expiry,
      required this.relayProtocol,
      this.relayData,
      @Uint8ListToHexConverter() this.controllerKey,
      @Uint8ListToHexConverter() required this.selfPublicKey,
      this.selfAppMetaData,
      @Uint8ListToHexConverter() this.peerPublicKey,
      this.peerAppMetaData,
      required final Map<String, NamespaceSession> namespaces,
      required final Map<String, NamespaceProposal> proposalNamespaces,
      required this.isAcknowledged})
      : _namespaces = namespaces,
        _proposalNamespaces = proposalNamespaces,
        super._();

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$$_SessionFromJson(json);

  @override
  @TopicConverter()
  final String topic;
  @override
  @ExpiryConverter()
  final Duration expiry;
  @override
  final String relayProtocol;
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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_namespaces);
  }

  final Map<String, NamespaceProposal> _proposalNamespaces;
  @override
  Map<String, NamespaceProposal> get proposalNamespaces {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_proposalNamespaces);
  }

  @override
  final bool isAcknowledged;

  @override
  String toString() {
    return 'Session(topic: $topic, expiry: $expiry, relayProtocol: $relayProtocol, relayData: $relayData, controllerKey: $controllerKey, selfPublicKey: $selfPublicKey, selfAppMetaData: $selfAppMetaData, peerPublicKey: $peerPublicKey, peerAppMetaData: $peerAppMetaData, namespaces: $namespaces, proposalNamespaces: $proposalNamespaces, isAcknowledged: $isAcknowledged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Session &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.expiry, expiry) || other.expiry == expiry) &&
            (identical(other.relayProtocol, relayProtocol) ||
                other.relayProtocol == relayProtocol) &&
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
      expiry,
      relayProtocol,
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
  Map<String, dynamic> toJson() {
    return _$$_SessionToJson(
      this,
    );
  }
}

abstract class _Session extends Session {
  const factory _Session(
      {@TopicConverter() required final String topic,
      @ExpiryConverter() required final Duration expiry,
      required final String relayProtocol,
      final String? relayData,
      @Uint8ListToHexConverter() final Uint8List? controllerKey,
      @Uint8ListToHexConverter() required final Uint8List selfPublicKey,
      final AppMetaData? selfAppMetaData,
      @Uint8ListToHexConverter() final Uint8List? peerPublicKey,
      final AppMetaData? peerAppMetaData,
      required final Map<String, NamespaceSession> namespaces,
      required final Map<String, NamespaceProposal> proposalNamespaces,
      required final bool isAcknowledged}) = _$_Session;
  const _Session._() : super._();

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  @TopicConverter()
  String get topic;
  @override
  @ExpiryConverter()
  Duration get expiry;
  @override
  String get relayProtocol;
  @override
  String? get relayData;
  @override
  @Uint8ListToHexConverter()
  Uint8List? get controllerKey;
  @override
  @Uint8ListToHexConverter()
  Uint8List get selfPublicKey;
  @override
  AppMetaData? get selfAppMetaData;
  @override
  @Uint8ListToHexConverter()
  Uint8List? get peerPublicKey;
  @override
  AppMetaData? get peerAppMetaData;
  @override
  Map<String, NamespaceSession> get namespaces;
  @override
  Map<String, NamespaceProposal> get proposalNamespaces;
  @override
  bool get isAcknowledged;
  @override
  @JsonKey(ignore: true)
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      throw _privateConstructorUsedError;
}
