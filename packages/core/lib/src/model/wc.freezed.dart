// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletConnectUri _$WalletConnectUriFromJson(Map<String, dynamic> json) {
  return _WalletConnectUri.fromJson(json);
}

/// @nodoc
mixin _$WalletConnectUri {
  String get topic => throw _privateConstructorUsedError;
  @Uint8ListToHexConverter()
  Uint8List get symKey => throw _privateConstructorUsedError;
  RelayProtocolOptions get relay => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletConnectUriCopyWith<WalletConnectUri> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletConnectUriCopyWith<$Res> {
  factory $WalletConnectUriCopyWith(
          WalletConnectUri value, $Res Function(WalletConnectUri) then) =
      _$WalletConnectUriCopyWithImpl<$Res, WalletConnectUri>;
  @useResult
  $Res call(
      {String topic,
      @Uint8ListToHexConverter() Uint8List symKey,
      RelayProtocolOptions relay,
      String version});

  $RelayProtocolOptionsCopyWith<$Res> get relay;
}

/// @nodoc
class _$WalletConnectUriCopyWithImpl<$Res, $Val extends WalletConnectUri>
    implements $WalletConnectUriCopyWith<$Res> {
  _$WalletConnectUriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? symKey = null,
    Object? relay = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      symKey: null == symKey
          ? _value.symKey
          : symKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      relay: null == relay
          ? _value.relay
          : relay // ignore: cast_nullable_to_non_nullable
              as RelayProtocolOptions,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RelayProtocolOptionsCopyWith<$Res> get relay {
    return $RelayProtocolOptionsCopyWith<$Res>(_value.relay, (value) {
      return _then(_value.copyWith(relay: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WalletConnectUriCopyWith<$Res>
    implements $WalletConnectUriCopyWith<$Res> {
  factory _$$_WalletConnectUriCopyWith(
          _$_WalletConnectUri value, $Res Function(_$_WalletConnectUri) then) =
      __$$_WalletConnectUriCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String topic,
      @Uint8ListToHexConverter() Uint8List symKey,
      RelayProtocolOptions relay,
      String version});

  @override
  $RelayProtocolOptionsCopyWith<$Res> get relay;
}

/// @nodoc
class __$$_WalletConnectUriCopyWithImpl<$Res>
    extends _$WalletConnectUriCopyWithImpl<$Res, _$_WalletConnectUri>
    implements _$$_WalletConnectUriCopyWith<$Res> {
  __$$_WalletConnectUriCopyWithImpl(
      _$_WalletConnectUri _value, $Res Function(_$_WalletConnectUri) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? symKey = null,
    Object? relay = null,
    Object? version = null,
  }) {
    return _then(_$_WalletConnectUri(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      symKey: null == symKey
          ? _value.symKey
          : symKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      relay: null == relay
          ? _value.relay
          : relay // ignore: cast_nullable_to_non_nullable
              as RelayProtocolOptions,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletConnectUri extends _WalletConnectUri {
  const _$_WalletConnectUri(
      {required this.topic,
      @Uint8ListToHexConverter() required this.symKey,
      required this.relay,
      this.version = '2'})
      : super._();

  factory _$_WalletConnectUri.fromJson(Map<String, dynamic> json) =>
      _$$_WalletConnectUriFromJson(json);

  @override
  final String topic;
  @override
  @Uint8ListToHexConverter()
  final Uint8List symKey;
  @override
  final RelayProtocolOptions relay;
  @override
  @JsonKey()
  final String version;

  @override
  String toString() {
    return 'WalletConnectUri(topic: $topic, symKey: $symKey, relay: $relay, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletConnectUri &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality().equals(other.symKey, symKey) &&
            (identical(other.relay, relay) || other.relay == relay) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic,
      const DeepCollectionEquality().hash(symKey), relay, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletConnectUriCopyWith<_$_WalletConnectUri> get copyWith =>
      __$$_WalletConnectUriCopyWithImpl<_$_WalletConnectUri>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletConnectUriToJson(
      this,
    );
  }
}

abstract class _WalletConnectUri extends WalletConnectUri {
  const factory _WalletConnectUri(
      {required final String topic,
      @Uint8ListToHexConverter() required final Uint8List symKey,
      required final RelayProtocolOptions relay,
      final String version}) = _$_WalletConnectUri;
  const _WalletConnectUri._() : super._();

  factory _WalletConnectUri.fromJson(Map<String, dynamic> json) =
      _$_WalletConnectUri.fromJson;

  @override
  String get topic;
  @override
  @Uint8ListToHexConverter()
  Uint8List get symKey;
  @override
  RelayProtocolOptions get relay;
  @override
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$_WalletConnectUriCopyWith<_$_WalletConnectUri> get copyWith =>
      throw _privateConstructorUsedError;
}

RelayProtocolOptions _$RelayProtocolOptionsFromJson(Map<String, dynamic> json) {
  return _RelayProtocolOptions.fromJson(json);
}

/// @nodoc
mixin _$RelayProtocolOptions {
  String get protocol => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelayProtocolOptionsCopyWith<RelayProtocolOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelayProtocolOptionsCopyWith<$Res> {
  factory $RelayProtocolOptionsCopyWith(RelayProtocolOptions value,
          $Res Function(RelayProtocolOptions) then) =
      _$RelayProtocolOptionsCopyWithImpl<$Res, RelayProtocolOptions>;
  @useResult
  $Res call({String protocol, String? data});
}

/// @nodoc
class _$RelayProtocolOptionsCopyWithImpl<$Res,
        $Val extends RelayProtocolOptions>
    implements $RelayProtocolOptionsCopyWith<$Res> {
  _$RelayProtocolOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocol = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelayProtocolOptionsCopyWith<$Res>
    implements $RelayProtocolOptionsCopyWith<$Res> {
  factory _$$_RelayProtocolOptionsCopyWith(_$_RelayProtocolOptions value,
          $Res Function(_$_RelayProtocolOptions) then) =
      __$$_RelayProtocolOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String protocol, String? data});
}

/// @nodoc
class __$$_RelayProtocolOptionsCopyWithImpl<$Res>
    extends _$RelayProtocolOptionsCopyWithImpl<$Res, _$_RelayProtocolOptions>
    implements _$$_RelayProtocolOptionsCopyWith<$Res> {
  __$$_RelayProtocolOptionsCopyWithImpl(_$_RelayProtocolOptions _value,
      $Res Function(_$_RelayProtocolOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocol = null,
    Object? data = freezed,
  }) {
    return _then(_$_RelayProtocolOptions(
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelayProtocolOptions extends _RelayProtocolOptions {
  const _$_RelayProtocolOptions({this.protocol = 'irn', this.data}) : super._();

  factory _$_RelayProtocolOptions.fromJson(Map<String, dynamic> json) =>
      _$$_RelayProtocolOptionsFromJson(json);

  @override
  @JsonKey()
  final String protocol;
  @override
  final String? data;

  @override
  String toString() {
    return 'RelayProtocolOptions(protocol: $protocol, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelayProtocolOptions &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, protocol, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelayProtocolOptionsCopyWith<_$_RelayProtocolOptions> get copyWith =>
      __$$_RelayProtocolOptionsCopyWithImpl<_$_RelayProtocolOptions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelayProtocolOptionsToJson(
      this,
    );
  }
}

abstract class _RelayProtocolOptions extends RelayProtocolOptions {
  const factory _RelayProtocolOptions(
      {final String protocol, final String? data}) = _$_RelayProtocolOptions;
  const _RelayProtocolOptions._() : super._();

  factory _RelayProtocolOptions.fromJson(Map<String, dynamic> json) =
      _$_RelayProtocolOptions.fromJson;

  @override
  String get protocol;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$_RelayProtocolOptionsCopyWith<_$_RelayProtocolOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

WCRequest<T> _$WCRequestFromJson<T extends ClientParams>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _WCRequest<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$WCRequest<T extends ClientParams> {
  @TopicConverter()
  String get topic => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  T get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WCRequestCopyWith<T, WCRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WCRequestCopyWith<T extends ClientParams, $Res> {
  factory $WCRequestCopyWith(
          WCRequest<T> value, $Res Function(WCRequest<T>) then) =
      _$WCRequestCopyWithImpl<T, $Res, WCRequest<T>>;
  @useResult
  $Res call({@TopicConverter() String topic, int id, String method, T params});
}

/// @nodoc
class _$WCRequestCopyWithImpl<T extends ClientParams, $Res,
    $Val extends WCRequest<T>> implements $WCRequestCopyWith<T, $Res> {
  _$WCRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? id = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WCRequestCopyWith<T extends ClientParams, $Res>
    implements $WCRequestCopyWith<T, $Res> {
  factory _$$_WCRequestCopyWith(
          _$_WCRequest<T> value, $Res Function(_$_WCRequest<T>) then) =
      __$$_WCRequestCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({@TopicConverter() String topic, int id, String method, T params});
}

/// @nodoc
class __$$_WCRequestCopyWithImpl<T extends ClientParams, $Res>
    extends _$WCRequestCopyWithImpl<T, $Res, _$_WCRequest<T>>
    implements _$$_WCRequestCopyWith<T, $Res> {
  __$$_WCRequestCopyWithImpl(
      _$_WCRequest<T> _value, $Res Function(_$_WCRequest<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? id = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(_$_WCRequest<T>(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_WCRequest<T extends ClientParams> extends _WCRequest<T> {
  const _$_WCRequest(
      {@TopicConverter() required this.topic,
      required this.id,
      required this.method,
      required this.params})
      : super._();

  factory _$_WCRequest.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_WCRequestFromJson(json, fromJsonT);

  @override
  @TopicConverter()
  final String topic;
  @override
  final int id;
  @override
  final String method;
  @override
  final T params;

  @override
  String toString() {
    return 'WCRequest<$T>(topic: $topic, id: $id, method: $method, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WCRequest<T> &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, id, method,
      const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WCRequestCopyWith<T, _$_WCRequest<T>> get copyWith =>
      __$$_WCRequestCopyWithImpl<T, _$_WCRequest<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_WCRequestToJson<T>(this, toJsonT);
  }
}

abstract class _WCRequest<T extends ClientParams> extends WCRequest<T> {
  const factory _WCRequest(
      {@TopicConverter() required final String topic,
      required final int id,
      required final String method,
      required final T params}) = _$_WCRequest<T>;
  const _WCRequest._() : super._();

  factory _WCRequest.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_WCRequest<T>.fromJson;

  @override
  @TopicConverter()
  String get topic;
  @override
  int get id;
  @override
  String get method;
  @override
  T get params;
  @override
  @JsonKey(ignore: true)
  _$$_WCRequestCopyWith<T, _$_WCRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
