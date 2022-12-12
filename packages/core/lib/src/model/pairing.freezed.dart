// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pairing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pairing _$PairingFromJson(Map<String, dynamic> json) {
  return _Pairing.fromJson(json);
}

/// @nodoc
mixin _$Pairing {
  @TopicConverter()
  String get topic => throw _privateConstructorUsedError;
  @ExpiryConverter()
  Duration get expiry => throw _privateConstructorUsedError;
  AppMetaData? get peerAppMetaData => throw _privateConstructorUsedError;
  String get relayProtocol => throw _privateConstructorUsedError;
  String? get relayData => throw _privateConstructorUsedError;
  @UriStringConverter()
  Uri get uri => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get registeredMethods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PairingCopyWith<Pairing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairingCopyWith<$Res> {
  factory $PairingCopyWith(Pairing value, $Res Function(Pairing) then) =
      _$PairingCopyWithImpl<$Res, Pairing>;
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      @ExpiryConverter() Duration expiry,
      AppMetaData? peerAppMetaData,
      String relayProtocol,
      String? relayData,
      @UriStringConverter() Uri uri,
      bool isActive,
      String registeredMethods});

  $AppMetaDataCopyWith<$Res>? get peerAppMetaData;
}

/// @nodoc
class _$PairingCopyWithImpl<$Res, $Val extends Pairing>
    implements $PairingCopyWith<$Res> {
  _$PairingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? expiry = null,
    Object? peerAppMetaData = freezed,
    Object? relayProtocol = null,
    Object? relayData = freezed,
    Object? uri = null,
    Object? isActive = null,
    Object? registeredMethods = null,
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
      peerAppMetaData: freezed == peerAppMetaData
          ? _value.peerAppMetaData
          : peerAppMetaData // ignore: cast_nullable_to_non_nullable
              as AppMetaData?,
      relayProtocol: null == relayProtocol
          ? _value.relayProtocol
          : relayProtocol // ignore: cast_nullable_to_non_nullable
              as String,
      relayData: freezed == relayData
          ? _value.relayData
          : relayData // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      registeredMethods: null == registeredMethods
          ? _value.registeredMethods
          : registeredMethods // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
abstract class _$$_PairingCopyWith<$Res> implements $PairingCopyWith<$Res> {
  factory _$$_PairingCopyWith(
          _$_Pairing value, $Res Function(_$_Pairing) then) =
      __$$_PairingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      @ExpiryConverter() Duration expiry,
      AppMetaData? peerAppMetaData,
      String relayProtocol,
      String? relayData,
      @UriStringConverter() Uri uri,
      bool isActive,
      String registeredMethods});

  @override
  $AppMetaDataCopyWith<$Res>? get peerAppMetaData;
}

/// @nodoc
class __$$_PairingCopyWithImpl<$Res>
    extends _$PairingCopyWithImpl<$Res, _$_Pairing>
    implements _$$_PairingCopyWith<$Res> {
  __$$_PairingCopyWithImpl(_$_Pairing _value, $Res Function(_$_Pairing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? expiry = null,
    Object? peerAppMetaData = freezed,
    Object? relayProtocol = null,
    Object? relayData = freezed,
    Object? uri = null,
    Object? isActive = null,
    Object? registeredMethods = null,
  }) {
    return _then(_$_Pairing(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as Duration,
      peerAppMetaData: freezed == peerAppMetaData
          ? _value.peerAppMetaData
          : peerAppMetaData // ignore: cast_nullable_to_non_nullable
              as AppMetaData?,
      relayProtocol: null == relayProtocol
          ? _value.relayProtocol
          : relayProtocol // ignore: cast_nullable_to_non_nullable
              as String,
      relayData: freezed == relayData
          ? _value.relayData
          : relayData // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      registeredMethods: null == registeredMethods
          ? _value.registeredMethods
          : registeredMethods // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pairing implements _Pairing {
  const _$_Pairing(
      {@TopicConverter() required this.topic,
      @ExpiryConverter() required this.expiry,
      this.peerAppMetaData,
      required this.relayProtocol,
      this.relayData,
      @UriStringConverter() required this.uri,
      required this.isActive,
      required this.registeredMethods});

  factory _$_Pairing.fromJson(Map<String, dynamic> json) =>
      _$$_PairingFromJson(json);

  @override
  @TopicConverter()
  final String topic;
  @override
  @ExpiryConverter()
  final Duration expiry;
  @override
  final AppMetaData? peerAppMetaData;
  @override
  final String relayProtocol;
  @override
  final String? relayData;
  @override
  @UriStringConverter()
  final Uri uri;
  @override
  final bool isActive;
  @override
  final String registeredMethods;

  @override
  String toString() {
    return 'Pairing(topic: $topic, expiry: $expiry, peerAppMetaData: $peerAppMetaData, relayProtocol: $relayProtocol, relayData: $relayData, uri: $uri, isActive: $isActive, registeredMethods: $registeredMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pairing &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.expiry, expiry) || other.expiry == expiry) &&
            (identical(other.peerAppMetaData, peerAppMetaData) ||
                other.peerAppMetaData == peerAppMetaData) &&
            (identical(other.relayProtocol, relayProtocol) ||
                other.relayProtocol == relayProtocol) &&
            (identical(other.relayData, relayData) ||
                other.relayData == relayData) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.registeredMethods, registeredMethods) ||
                other.registeredMethods == registeredMethods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, expiry, peerAppMetaData,
      relayProtocol, relayData, uri, isActive, registeredMethods);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PairingCopyWith<_$_Pairing> get copyWith =>
      __$$_PairingCopyWithImpl<_$_Pairing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PairingToJson(
      this,
    );
  }
}

abstract class _Pairing implements Pairing {
  const factory _Pairing(
      {@TopicConverter() required final String topic,
      @ExpiryConverter() required final Duration expiry,
      final AppMetaData? peerAppMetaData,
      required final String relayProtocol,
      final String? relayData,
      @UriStringConverter() required final Uri uri,
      required final bool isActive,
      required final String registeredMethods}) = _$_Pairing;

  factory _Pairing.fromJson(Map<String, dynamic> json) = _$_Pairing.fromJson;

  @override
  @TopicConverter()
  String get topic;
  @override
  @ExpiryConverter()
  Duration get expiry;
  @override
  AppMetaData? get peerAppMetaData;
  @override
  String get relayProtocol;
  @override
  String? get relayData;
  @override
  @UriStringConverter()
  Uri get uri;
  @override
  bool get isActive;
  @override
  String get registeredMethods;
  @override
  @JsonKey(ignore: true)
  _$$_PairingCopyWith<_$_Pairing> get copyWith =>
      throw _privateConstructorUsedError;
}
