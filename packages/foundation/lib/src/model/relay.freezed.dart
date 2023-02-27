// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RelayMessage {
  @JsonKey(name: 'value')
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'value') String value) text,
    required TResult Function(@JsonKey(name: 'value') List<int> value) bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'value') String value)? text,
    TResult? Function(@JsonKey(name: 'value') List<int> value)? bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'value') String value)? text,
    TResult Function(@JsonKey(name: 'value') List<int> value)? bytes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RelayMessageText value) text,
    required TResult Function(RelayMessageBytes value) bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RelayMessageText value)? text,
    TResult? Function(RelayMessageBytes value)? bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RelayMessageText value)? text,
    TResult Function(RelayMessageBytes value)? bytes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelayMessageCopyWith<$Res> {
  factory $RelayMessageCopyWith(
          RelayMessage value, $Res Function(RelayMessage) then) =
      _$RelayMessageCopyWithImpl<$Res, RelayMessage>;
}

/// @nodoc
class _$RelayMessageCopyWithImpl<$Res, $Val extends RelayMessage>
    implements $RelayMessageCopyWith<$Res> {
  _$RelayMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RelayMessageTextCopyWith<$Res> {
  factory _$$RelayMessageTextCopyWith(
          _$RelayMessageText value, $Res Function(_$RelayMessageText) then) =
      __$$RelayMessageTextCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$RelayMessageTextCopyWithImpl<$Res>
    extends _$RelayMessageCopyWithImpl<$Res, _$RelayMessageText>
    implements _$$RelayMessageTextCopyWith<$Res> {
  __$$RelayMessageTextCopyWithImpl(
      _$RelayMessageText _value, $Res Function(_$RelayMessageText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RelayMessageText(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RelayMessageText implements RelayMessageText {
  _$RelayMessageText(@JsonKey(name: 'value') this.value);

  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'RelayMessage.text(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelayMessageText &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelayMessageTextCopyWith<_$RelayMessageText> get copyWith =>
      __$$RelayMessageTextCopyWithImpl<_$RelayMessageText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'value') String value) text,
    required TResult Function(@JsonKey(name: 'value') List<int> value) bytes,
  }) {
    return text(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'value') String value)? text,
    TResult? Function(@JsonKey(name: 'value') List<int> value)? bytes,
  }) {
    return text?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'value') String value)? text,
    TResult Function(@JsonKey(name: 'value') List<int> value)? bytes,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RelayMessageText value) text,
    required TResult Function(RelayMessageBytes value) bytes,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RelayMessageText value)? text,
    TResult? Function(RelayMessageBytes value)? bytes,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RelayMessageText value)? text,
    TResult Function(RelayMessageBytes value)? bytes,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class RelayMessageText implements RelayMessage {
  factory RelayMessageText(@JsonKey(name: 'value') final String value) =
      _$RelayMessageText;

  @override
  @JsonKey(name: 'value')
  String get value;
  @JsonKey(ignore: true)
  _$$RelayMessageTextCopyWith<_$RelayMessageText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RelayMessageBytesCopyWith<$Res> {
  factory _$$RelayMessageBytesCopyWith(
          _$RelayMessageBytes value, $Res Function(_$RelayMessageBytes) then) =
      __$$RelayMessageBytesCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'value') List<int> value});
}

/// @nodoc
class __$$RelayMessageBytesCopyWithImpl<$Res>
    extends _$RelayMessageCopyWithImpl<$Res, _$RelayMessageBytes>
    implements _$$RelayMessageBytesCopyWith<$Res> {
  __$$RelayMessageBytesCopyWithImpl(
      _$RelayMessageBytes _value, $Res Function(_$RelayMessageBytes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RelayMessageBytes(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$RelayMessageBytes implements RelayMessageBytes {
  _$RelayMessageBytes(@JsonKey(name: 'value') final List<int> value)
      : _value = value;

  final List<int> _value;
  @override
  @JsonKey(name: 'value')
  List<int> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'RelayMessage.bytes(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelayMessageBytes &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelayMessageBytesCopyWith<_$RelayMessageBytes> get copyWith =>
      __$$RelayMessageBytesCopyWithImpl<_$RelayMessageBytes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'value') String value) text,
    required TResult Function(@JsonKey(name: 'value') List<int> value) bytes,
  }) {
    return bytes(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'value') String value)? text,
    TResult? Function(@JsonKey(name: 'value') List<int> value)? bytes,
  }) {
    return bytes?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'value') String value)? text,
    TResult Function(@JsonKey(name: 'value') List<int> value)? bytes,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RelayMessageText value) text,
    required TResult Function(RelayMessageBytes value) bytes,
  }) {
    return bytes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RelayMessageText value)? text,
    TResult? Function(RelayMessageBytes value)? bytes,
  }) {
    return bytes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RelayMessageText value)? text,
    TResult Function(RelayMessageBytes value)? bytes,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(this);
    }
    return orElse();
  }
}

abstract class RelayMessageBytes implements RelayMessage {
  factory RelayMessageBytes(@JsonKey(name: 'value') final List<int> value) =
      _$RelayMessageBytes;

  @override
  @JsonKey(name: 'value')
  List<int> get value;
  @JsonKey(ignore: true)
  _$$RelayMessageBytesCopyWith<_$RelayMessageBytes> get copyWith =>
      throw _privateConstructorUsedError;
}

RelayPublishRequestParams _$RelayPublishRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _RelayPublishRequestParams.fromJson(json);
}

/// @nodoc
mixin _$RelayPublishRequestParams {
  @TopicConverter()
  String get topic => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @TtlConverter()
  Duration get ttl => throw _privateConstructorUsedError;
  int get tag => throw _privateConstructorUsedError;
  bool? get prompt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelayPublishRequestParamsCopyWith<RelayPublishRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelayPublishRequestParamsCopyWith<$Res> {
  factory $RelayPublishRequestParamsCopyWith(RelayPublishRequestParams value,
          $Res Function(RelayPublishRequestParams) then) =
      _$RelayPublishRequestParamsCopyWithImpl<$Res, RelayPublishRequestParams>;
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      String message,
      @TtlConverter() Duration ttl,
      int tag,
      bool? prompt});
}

/// @nodoc
class _$RelayPublishRequestParamsCopyWithImpl<$Res,
        $Val extends RelayPublishRequestParams>
    implements $RelayPublishRequestParamsCopyWith<$Res> {
  _$RelayPublishRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? message = null,
    Object? ttl = null,
    Object? tag = null,
    Object? prompt = freezed,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as int,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelayPublishRequestParamsCopyWith<$Res>
    implements $RelayPublishRequestParamsCopyWith<$Res> {
  factory _$$_RelayPublishRequestParamsCopyWith(
          _$_RelayPublishRequestParams value,
          $Res Function(_$_RelayPublishRequestParams) then) =
      __$$_RelayPublishRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      String message,
      @TtlConverter() Duration ttl,
      int tag,
      bool? prompt});
}

/// @nodoc
class __$$_RelayPublishRequestParamsCopyWithImpl<$Res>
    extends _$RelayPublishRequestParamsCopyWithImpl<$Res,
        _$_RelayPublishRequestParams>
    implements _$$_RelayPublishRequestParamsCopyWith<$Res> {
  __$$_RelayPublishRequestParamsCopyWithImpl(
      _$_RelayPublishRequestParams _value,
      $Res Function(_$_RelayPublishRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? message = null,
    Object? ttl = null,
    Object? tag = null,
    Object? prompt = freezed,
  }) {
    return _then(_$_RelayPublishRequestParams(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as Duration,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as int,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelayPublishRequestParams implements _RelayPublishRequestParams {
  const _$_RelayPublishRequestParams(
      {@TopicConverter() required this.topic,
      required this.message,
      @TtlConverter() required this.ttl,
      required this.tag,
      this.prompt});

  factory _$_RelayPublishRequestParams.fromJson(Map<String, dynamic> json) =>
      _$$_RelayPublishRequestParamsFromJson(json);

  @override
  @TopicConverter()
  final String topic;
  @override
  final String message;
  @override
  @TtlConverter()
  final Duration ttl;
  @override
  final int tag;
  @override
  final bool? prompt;

  @override
  String toString() {
    return 'RelayPublishRequestParams(topic: $topic, message: $message, ttl: $ttl, tag: $tag, prompt: $prompt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelayPublishRequestParams &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, topic, message, ttl, tag, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelayPublishRequestParamsCopyWith<_$_RelayPublishRequestParams>
      get copyWith => __$$_RelayPublishRequestParamsCopyWithImpl<
          _$_RelayPublishRequestParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelayPublishRequestParamsToJson(
      this,
    );
  }
}

abstract class _RelayPublishRequestParams implements RelayPublishRequestParams {
  const factory _RelayPublishRequestParams(
      {@TopicConverter() required final String topic,
      required final String message,
      @TtlConverter() required final Duration ttl,
      required final int tag,
      final bool? prompt}) = _$_RelayPublishRequestParams;

  factory _RelayPublishRequestParams.fromJson(Map<String, dynamic> json) =
      _$_RelayPublishRequestParams.fromJson;

  @override
  @TopicConverter()
  String get topic;
  @override
  String get message;
  @override
  @TtlConverter()
  Duration get ttl;
  @override
  int get tag;
  @override
  bool? get prompt;
  @override
  @JsonKey(ignore: true)
  _$$_RelayPublishRequestParamsCopyWith<_$_RelayPublishRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RelayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object webSocket) onConnectionOpened,
    required TResult Function(RelayMessage message) onMessageReceived,
    required TResult Function(RelayShutdownReason reason) onConnectionClosing,
    required TResult Function(RelayShutdownReason reason) onConnectionClosed,
    required TResult Function(Error error) onConnectionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object webSocket)? onConnectionOpened,
    TResult? Function(RelayMessage message)? onMessageReceived,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult? Function(Error error)? onConnectionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object webSocket)? onConnectionOpened,
    TResult Function(RelayMessage message)? onMessageReceived,
    TResult Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult Function(Error error)? onConnectionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RelayEventOnConnectionOpened value)
        onConnectionOpened,
    required TResult Function(RelayEventOnMessageReceived value)
        onMessageReceived,
    required TResult Function(RelayEventOnConnectionClosing value)
        onConnectionClosing,
    required TResult Function(RelayEventOnConnectionClosed value)
        onConnectionClosed,
    required TResult Function(RelayEventOnConnectionFailed value)
        onConnectionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult? Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult? Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult? Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult? Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelayEventCopyWith<$Res> {
  factory $RelayEventCopyWith(
          RelayEvent value, $Res Function(RelayEvent) then) =
      _$RelayEventCopyWithImpl<$Res, RelayEvent>;
}

/// @nodoc
class _$RelayEventCopyWithImpl<$Res, $Val extends RelayEvent>
    implements $RelayEventCopyWith<$Res> {
  _$RelayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RelayEventOnConnectionOpenedCopyWith<$Res> {
  factory _$$RelayEventOnConnectionOpenedCopyWith(
          _$RelayEventOnConnectionOpened value,
          $Res Function(_$RelayEventOnConnectionOpened) then) =
      __$$RelayEventOnConnectionOpenedCopyWithImpl<$Res>;
  @useResult
  $Res call({Object webSocket});
}

/// @nodoc
class __$$RelayEventOnConnectionOpenedCopyWithImpl<$Res>
    extends _$RelayEventCopyWithImpl<$Res, _$RelayEventOnConnectionOpened>
    implements _$$RelayEventOnConnectionOpenedCopyWith<$Res> {
  __$$RelayEventOnConnectionOpenedCopyWithImpl(
      _$RelayEventOnConnectionOpened _value,
      $Res Function(_$RelayEventOnConnectionOpened) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webSocket = null,
  }) {
    return _then(_$RelayEventOnConnectionOpened(
      null == webSocket ? _value.webSocket : webSocket,
    ));
  }
}

/// @nodoc

class _$RelayEventOnConnectionOpened implements RelayEventOnConnectionOpened {
  _$RelayEventOnConnectionOpened(this.webSocket);

  @override
  final Object webSocket;

  @override
  String toString() {
    return 'RelayEvent.onConnectionOpened(webSocket: $webSocket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelayEventOnConnectionOpened &&
            const DeepCollectionEquality().equals(other.webSocket, webSocket));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(webSocket));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelayEventOnConnectionOpenedCopyWith<_$RelayEventOnConnectionOpened>
      get copyWith => __$$RelayEventOnConnectionOpenedCopyWithImpl<
          _$RelayEventOnConnectionOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object webSocket) onConnectionOpened,
    required TResult Function(RelayMessage message) onMessageReceived,
    required TResult Function(RelayShutdownReason reason) onConnectionClosing,
    required TResult Function(RelayShutdownReason reason) onConnectionClosed,
    required TResult Function(Error error) onConnectionFailed,
  }) {
    return onConnectionOpened(webSocket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object webSocket)? onConnectionOpened,
    TResult? Function(RelayMessage message)? onMessageReceived,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult? Function(Error error)? onConnectionFailed,
  }) {
    return onConnectionOpened?.call(webSocket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object webSocket)? onConnectionOpened,
    TResult Function(RelayMessage message)? onMessageReceived,
    TResult Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult Function(Error error)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onConnectionOpened != null) {
      return onConnectionOpened(webSocket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RelayEventOnConnectionOpened value)
        onConnectionOpened,
    required TResult Function(RelayEventOnMessageReceived value)
        onMessageReceived,
    required TResult Function(RelayEventOnConnectionClosing value)
        onConnectionClosing,
    required TResult Function(RelayEventOnConnectionClosed value)
        onConnectionClosed,
    required TResult Function(RelayEventOnConnectionFailed value)
        onConnectionFailed,
  }) {
    return onConnectionOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult? Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult? Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult? Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult? Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
  }) {
    return onConnectionOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onConnectionOpened != null) {
      return onConnectionOpened(this);
    }
    return orElse();
  }
}

abstract class RelayEventOnConnectionOpened implements RelayEvent {
  factory RelayEventOnConnectionOpened(final Object webSocket) =
      _$RelayEventOnConnectionOpened;

  Object get webSocket;
  @JsonKey(ignore: true)
  _$$RelayEventOnConnectionOpenedCopyWith<_$RelayEventOnConnectionOpened>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RelayEventOnMessageReceivedCopyWith<$Res> {
  factory _$$RelayEventOnMessageReceivedCopyWith(
          _$RelayEventOnMessageReceived value,
          $Res Function(_$RelayEventOnMessageReceived) then) =
      __$$RelayEventOnMessageReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({RelayMessage message});

  $RelayMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$RelayEventOnMessageReceivedCopyWithImpl<$Res>
    extends _$RelayEventCopyWithImpl<$Res, _$RelayEventOnMessageReceived>
    implements _$$RelayEventOnMessageReceivedCopyWith<$Res> {
  __$$RelayEventOnMessageReceivedCopyWithImpl(
      _$RelayEventOnMessageReceived _value,
      $Res Function(_$RelayEventOnMessageReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RelayEventOnMessageReceived(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RelayMessage,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RelayMessageCopyWith<$Res> get message {
    return $RelayMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$RelayEventOnMessageReceived implements RelayEventOnMessageReceived {
  _$RelayEventOnMessageReceived(this.message);

  @override
  final RelayMessage message;

  @override
  String toString() {
    return 'RelayEvent.onMessageReceived(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelayEventOnMessageReceived &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelayEventOnMessageReceivedCopyWith<_$RelayEventOnMessageReceived>
      get copyWith => __$$RelayEventOnMessageReceivedCopyWithImpl<
          _$RelayEventOnMessageReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object webSocket) onConnectionOpened,
    required TResult Function(RelayMessage message) onMessageReceived,
    required TResult Function(RelayShutdownReason reason) onConnectionClosing,
    required TResult Function(RelayShutdownReason reason) onConnectionClosed,
    required TResult Function(Error error) onConnectionFailed,
  }) {
    return onMessageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object webSocket)? onConnectionOpened,
    TResult? Function(RelayMessage message)? onMessageReceived,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult? Function(Error error)? onConnectionFailed,
  }) {
    return onMessageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object webSocket)? onConnectionOpened,
    TResult Function(RelayMessage message)? onMessageReceived,
    TResult Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult Function(Error error)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onMessageReceived != null) {
      return onMessageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RelayEventOnConnectionOpened value)
        onConnectionOpened,
    required TResult Function(RelayEventOnMessageReceived value)
        onMessageReceived,
    required TResult Function(RelayEventOnConnectionClosing value)
        onConnectionClosing,
    required TResult Function(RelayEventOnConnectionClosed value)
        onConnectionClosed,
    required TResult Function(RelayEventOnConnectionFailed value)
        onConnectionFailed,
  }) {
    return onMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult? Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult? Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult? Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult? Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
  }) {
    return onMessageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onMessageReceived != null) {
      return onMessageReceived(this);
    }
    return orElse();
  }
}

abstract class RelayEventOnMessageReceived implements RelayEvent {
  factory RelayEventOnMessageReceived(final RelayMessage message) =
      _$RelayEventOnMessageReceived;

  RelayMessage get message;
  @JsonKey(ignore: true)
  _$$RelayEventOnMessageReceivedCopyWith<_$RelayEventOnMessageReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RelayEventOnConnectionClosingCopyWith<$Res> {
  factory _$$RelayEventOnConnectionClosingCopyWith(
          _$RelayEventOnConnectionClosing value,
          $Res Function(_$RelayEventOnConnectionClosing) then) =
      __$$RelayEventOnConnectionClosingCopyWithImpl<$Res>;
  @useResult
  $Res call({RelayShutdownReason reason});

  $RelayShutdownReasonCopyWith<$Res> get reason;
}

/// @nodoc
class __$$RelayEventOnConnectionClosingCopyWithImpl<$Res>
    extends _$RelayEventCopyWithImpl<$Res, _$RelayEventOnConnectionClosing>
    implements _$$RelayEventOnConnectionClosingCopyWith<$Res> {
  __$$RelayEventOnConnectionClosingCopyWithImpl(
      _$RelayEventOnConnectionClosing _value,
      $Res Function(_$RelayEventOnConnectionClosing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$RelayEventOnConnectionClosing(
      null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as RelayShutdownReason,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RelayShutdownReasonCopyWith<$Res> get reason {
    return $RelayShutdownReasonCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$RelayEventOnConnectionClosing implements RelayEventOnConnectionClosing {
  _$RelayEventOnConnectionClosing(this.reason);

  @override
  final RelayShutdownReason reason;

  @override
  String toString() {
    return 'RelayEvent.onConnectionClosing(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelayEventOnConnectionClosing &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelayEventOnConnectionClosingCopyWith<_$RelayEventOnConnectionClosing>
      get copyWith => __$$RelayEventOnConnectionClosingCopyWithImpl<
          _$RelayEventOnConnectionClosing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object webSocket) onConnectionOpened,
    required TResult Function(RelayMessage message) onMessageReceived,
    required TResult Function(RelayShutdownReason reason) onConnectionClosing,
    required TResult Function(RelayShutdownReason reason) onConnectionClosed,
    required TResult Function(Error error) onConnectionFailed,
  }) {
    return onConnectionClosing(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object webSocket)? onConnectionOpened,
    TResult? Function(RelayMessage message)? onMessageReceived,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult? Function(Error error)? onConnectionFailed,
  }) {
    return onConnectionClosing?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object webSocket)? onConnectionOpened,
    TResult Function(RelayMessage message)? onMessageReceived,
    TResult Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult Function(Error error)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onConnectionClosing != null) {
      return onConnectionClosing(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RelayEventOnConnectionOpened value)
        onConnectionOpened,
    required TResult Function(RelayEventOnMessageReceived value)
        onMessageReceived,
    required TResult Function(RelayEventOnConnectionClosing value)
        onConnectionClosing,
    required TResult Function(RelayEventOnConnectionClosed value)
        onConnectionClosed,
    required TResult Function(RelayEventOnConnectionFailed value)
        onConnectionFailed,
  }) {
    return onConnectionClosing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult? Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult? Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult? Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult? Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
  }) {
    return onConnectionClosing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onConnectionClosing != null) {
      return onConnectionClosing(this);
    }
    return orElse();
  }
}

abstract class RelayEventOnConnectionClosing implements RelayEvent {
  factory RelayEventOnConnectionClosing(final RelayShutdownReason reason) =
      _$RelayEventOnConnectionClosing;

  RelayShutdownReason get reason;
  @JsonKey(ignore: true)
  _$$RelayEventOnConnectionClosingCopyWith<_$RelayEventOnConnectionClosing>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RelayEventOnConnectionClosedCopyWith<$Res> {
  factory _$$RelayEventOnConnectionClosedCopyWith(
          _$RelayEventOnConnectionClosed value,
          $Res Function(_$RelayEventOnConnectionClosed) then) =
      __$$RelayEventOnConnectionClosedCopyWithImpl<$Res>;
  @useResult
  $Res call({RelayShutdownReason reason});

  $RelayShutdownReasonCopyWith<$Res> get reason;
}

/// @nodoc
class __$$RelayEventOnConnectionClosedCopyWithImpl<$Res>
    extends _$RelayEventCopyWithImpl<$Res, _$RelayEventOnConnectionClosed>
    implements _$$RelayEventOnConnectionClosedCopyWith<$Res> {
  __$$RelayEventOnConnectionClosedCopyWithImpl(
      _$RelayEventOnConnectionClosed _value,
      $Res Function(_$RelayEventOnConnectionClosed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$RelayEventOnConnectionClosed(
      null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as RelayShutdownReason,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RelayShutdownReasonCopyWith<$Res> get reason {
    return $RelayShutdownReasonCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$RelayEventOnConnectionClosed implements RelayEventOnConnectionClosed {
  _$RelayEventOnConnectionClosed(this.reason);

  @override
  final RelayShutdownReason reason;

  @override
  String toString() {
    return 'RelayEvent.onConnectionClosed(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelayEventOnConnectionClosed &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelayEventOnConnectionClosedCopyWith<_$RelayEventOnConnectionClosed>
      get copyWith => __$$RelayEventOnConnectionClosedCopyWithImpl<
          _$RelayEventOnConnectionClosed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object webSocket) onConnectionOpened,
    required TResult Function(RelayMessage message) onMessageReceived,
    required TResult Function(RelayShutdownReason reason) onConnectionClosing,
    required TResult Function(RelayShutdownReason reason) onConnectionClosed,
    required TResult Function(Error error) onConnectionFailed,
  }) {
    return onConnectionClosed(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object webSocket)? onConnectionOpened,
    TResult? Function(RelayMessage message)? onMessageReceived,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult? Function(Error error)? onConnectionFailed,
  }) {
    return onConnectionClosed?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object webSocket)? onConnectionOpened,
    TResult Function(RelayMessage message)? onMessageReceived,
    TResult Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult Function(Error error)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onConnectionClosed != null) {
      return onConnectionClosed(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RelayEventOnConnectionOpened value)
        onConnectionOpened,
    required TResult Function(RelayEventOnMessageReceived value)
        onMessageReceived,
    required TResult Function(RelayEventOnConnectionClosing value)
        onConnectionClosing,
    required TResult Function(RelayEventOnConnectionClosed value)
        onConnectionClosed,
    required TResult Function(RelayEventOnConnectionFailed value)
        onConnectionFailed,
  }) {
    return onConnectionClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult? Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult? Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult? Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult? Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
  }) {
    return onConnectionClosed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onConnectionClosed != null) {
      return onConnectionClosed(this);
    }
    return orElse();
  }
}

abstract class RelayEventOnConnectionClosed implements RelayEvent {
  factory RelayEventOnConnectionClosed(final RelayShutdownReason reason) =
      _$RelayEventOnConnectionClosed;

  RelayShutdownReason get reason;
  @JsonKey(ignore: true)
  _$$RelayEventOnConnectionClosedCopyWith<_$RelayEventOnConnectionClosed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RelayEventOnConnectionFailedCopyWith<$Res> {
  factory _$$RelayEventOnConnectionFailedCopyWith(
          _$RelayEventOnConnectionFailed value,
          $Res Function(_$RelayEventOnConnectionFailed) then) =
      __$$RelayEventOnConnectionFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({Error error});
}

/// @nodoc
class __$$RelayEventOnConnectionFailedCopyWithImpl<$Res>
    extends _$RelayEventCopyWithImpl<$Res, _$RelayEventOnConnectionFailed>
    implements _$$RelayEventOnConnectionFailedCopyWith<$Res> {
  __$$RelayEventOnConnectionFailedCopyWithImpl(
      _$RelayEventOnConnectionFailed _value,
      $Res Function(_$RelayEventOnConnectionFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RelayEventOnConnectionFailed(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$RelayEventOnConnectionFailed implements RelayEventOnConnectionFailed {
  _$RelayEventOnConnectionFailed(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'RelayEvent.onConnectionFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelayEventOnConnectionFailed &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelayEventOnConnectionFailedCopyWith<_$RelayEventOnConnectionFailed>
      get copyWith => __$$RelayEventOnConnectionFailedCopyWithImpl<
          _$RelayEventOnConnectionFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object webSocket) onConnectionOpened,
    required TResult Function(RelayMessage message) onMessageReceived,
    required TResult Function(RelayShutdownReason reason) onConnectionClosing,
    required TResult Function(RelayShutdownReason reason) onConnectionClosed,
    required TResult Function(Error error) onConnectionFailed,
  }) {
    return onConnectionFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object webSocket)? onConnectionOpened,
    TResult? Function(RelayMessage message)? onMessageReceived,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult? Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult? Function(Error error)? onConnectionFailed,
  }) {
    return onConnectionFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object webSocket)? onConnectionOpened,
    TResult Function(RelayMessage message)? onMessageReceived,
    TResult Function(RelayShutdownReason reason)? onConnectionClosing,
    TResult Function(RelayShutdownReason reason)? onConnectionClosed,
    TResult Function(Error error)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onConnectionFailed != null) {
      return onConnectionFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RelayEventOnConnectionOpened value)
        onConnectionOpened,
    required TResult Function(RelayEventOnMessageReceived value)
        onMessageReceived,
    required TResult Function(RelayEventOnConnectionClosing value)
        onConnectionClosing,
    required TResult Function(RelayEventOnConnectionClosed value)
        onConnectionClosed,
    required TResult Function(RelayEventOnConnectionFailed value)
        onConnectionFailed,
  }) {
    return onConnectionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult? Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult? Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult? Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult? Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
  }) {
    return onConnectionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RelayEventOnConnectionOpened value)? onConnectionOpened,
    TResult Function(RelayEventOnMessageReceived value)? onMessageReceived,
    TResult Function(RelayEventOnConnectionClosing value)? onConnectionClosing,
    TResult Function(RelayEventOnConnectionClosed value)? onConnectionClosed,
    TResult Function(RelayEventOnConnectionFailed value)? onConnectionFailed,
    required TResult orElse(),
  }) {
    if (onConnectionFailed != null) {
      return onConnectionFailed(this);
    }
    return orElse();
  }
}

abstract class RelayEventOnConnectionFailed implements RelayEvent {
  factory RelayEventOnConnectionFailed(final Error error) =
      _$RelayEventOnConnectionFailed;

  Error get error;
  @JsonKey(ignore: true)
  _$$RelayEventOnConnectionFailedCopyWith<_$RelayEventOnConnectionFailed>
      get copyWith => throw _privateConstructorUsedError;
}

RelayShutdownReason _$RelayShutdownReasonFromJson(Map<String, dynamic> json) {
  return _RelayShutdownReason.fromJson(json);
}

/// @nodoc
mixin _$RelayShutdownReason {
  int get code => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelayShutdownReasonCopyWith<RelayShutdownReason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelayShutdownReasonCopyWith<$Res> {
  factory $RelayShutdownReasonCopyWith(
          RelayShutdownReason value, $Res Function(RelayShutdownReason) then) =
      _$RelayShutdownReasonCopyWithImpl<$Res, RelayShutdownReason>;
  @useResult
  $Res call({int code, String reason});
}

/// @nodoc
class _$RelayShutdownReasonCopyWithImpl<$Res, $Val extends RelayShutdownReason>
    implements $RelayShutdownReasonCopyWith<$Res> {
  _$RelayShutdownReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelayShutdownReasonCopyWith<$Res>
    implements $RelayShutdownReasonCopyWith<$Res> {
  factory _$$_RelayShutdownReasonCopyWith(_$_RelayShutdownReason value,
          $Res Function(_$_RelayShutdownReason) then) =
      __$$_RelayShutdownReasonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String reason});
}

/// @nodoc
class __$$_RelayShutdownReasonCopyWithImpl<$Res>
    extends _$RelayShutdownReasonCopyWithImpl<$Res, _$_RelayShutdownReason>
    implements _$$_RelayShutdownReasonCopyWith<$Res> {
  __$$_RelayShutdownReasonCopyWithImpl(_$_RelayShutdownReason _value,
      $Res Function(_$_RelayShutdownReason) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? reason = null,
  }) {
    return _then(_$_RelayShutdownReason(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelayShutdownReason implements _RelayShutdownReason {
  const _$_RelayShutdownReason({required this.code, required this.reason});

  factory _$_RelayShutdownReason.fromJson(Map<String, dynamic> json) =>
      _$$_RelayShutdownReasonFromJson(json);

  @override
  final int code;
  @override
  final String reason;

  @override
  String toString() {
    return 'RelayShutdownReason(code: $code, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelayShutdownReason &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelayShutdownReasonCopyWith<_$_RelayShutdownReason> get copyWith =>
      __$$_RelayShutdownReasonCopyWithImpl<_$_RelayShutdownReason>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelayShutdownReasonToJson(
      this,
    );
  }
}

abstract class _RelayShutdownReason implements RelayShutdownReason {
  const factory _RelayShutdownReason(
      {required final int code,
      required final String reason}) = _$_RelayShutdownReason;

  factory _RelayShutdownReason.fromJson(Map<String, dynamic> json) =
      _$_RelayShutdownReason.fromJson;

  @override
  int get code;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_RelayShutdownReasonCopyWith<_$_RelayShutdownReason> get copyWith =>
      throw _privateConstructorUsedError;
}

RelaySubscribeRequestParams _$RelaySubscribeRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _RelaySubscribeRequestParams.fromJson(json);
}

/// @nodoc
mixin _$RelaySubscribeRequestParams {
  @TopicConverter()
  String get topic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelaySubscribeRequestParamsCopyWith<RelaySubscribeRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelaySubscribeRequestParamsCopyWith<$Res> {
  factory $RelaySubscribeRequestParamsCopyWith(
          RelaySubscribeRequestParams value,
          $Res Function(RelaySubscribeRequestParams) then) =
      _$RelaySubscribeRequestParamsCopyWithImpl<$Res,
          RelaySubscribeRequestParams>;
  @useResult
  $Res call({@TopicConverter() String topic});
}

/// @nodoc
class _$RelaySubscribeRequestParamsCopyWithImpl<$Res,
        $Val extends RelaySubscribeRequestParams>
    implements $RelaySubscribeRequestParamsCopyWith<$Res> {
  _$RelaySubscribeRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelaySubscribeRequestParamsCopyWith<$Res>
    implements $RelaySubscribeRequestParamsCopyWith<$Res> {
  factory _$$_RelaySubscribeRequestParamsCopyWith(
          _$_RelaySubscribeRequestParams value,
          $Res Function(_$_RelaySubscribeRequestParams) then) =
      __$$_RelaySubscribeRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@TopicConverter() String topic});
}

/// @nodoc
class __$$_RelaySubscribeRequestParamsCopyWithImpl<$Res>
    extends _$RelaySubscribeRequestParamsCopyWithImpl<$Res,
        _$_RelaySubscribeRequestParams>
    implements _$$_RelaySubscribeRequestParamsCopyWith<$Res> {
  __$$_RelaySubscribeRequestParamsCopyWithImpl(
      _$_RelaySubscribeRequestParams _value,
      $Res Function(_$_RelaySubscribeRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$_RelaySubscribeRequestParams(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelaySubscribeRequestParams implements _RelaySubscribeRequestParams {
  const _$_RelaySubscribeRequestParams({@TopicConverter() required this.topic});

  factory _$_RelaySubscribeRequestParams.fromJson(Map<String, dynamic> json) =>
      _$$_RelaySubscribeRequestParamsFromJson(json);

  @override
  @TopicConverter()
  final String topic;

  @override
  String toString() {
    return 'RelaySubscribeRequestParams(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelaySubscribeRequestParams &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelaySubscribeRequestParamsCopyWith<_$_RelaySubscribeRequestParams>
      get copyWith => __$$_RelaySubscribeRequestParamsCopyWithImpl<
          _$_RelaySubscribeRequestParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelaySubscribeRequestParamsToJson(
      this,
    );
  }
}

abstract class _RelaySubscribeRequestParams
    implements RelaySubscribeRequestParams {
  const factory _RelaySubscribeRequestParams(
          {@TopicConverter() required final String topic}) =
      _$_RelaySubscribeRequestParams;

  factory _RelaySubscribeRequestParams.fromJson(Map<String, dynamic> json) =
      _$_RelaySubscribeRequestParams.fromJson;

  @override
  @TopicConverter()
  String get topic;
  @override
  @JsonKey(ignore: true)
  _$$_RelaySubscribeRequestParamsCopyWith<_$_RelaySubscribeRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

RelaySubscriptionRequestParams _$RelaySubscriptionRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _RelaySubscriptionRequestParams.fromJson(json);
}

/// @nodoc
mixin _$RelaySubscriptionRequestParams {
  @SubscriptionIdConverter()
  String get subscriptionId => throw _privateConstructorUsedError;
  RelaySubscriptionRequestParamsData get subscriptionData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelaySubscriptionRequestParamsCopyWith<RelaySubscriptionRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelaySubscriptionRequestParamsCopyWith<$Res> {
  factory $RelaySubscriptionRequestParamsCopyWith(
          RelaySubscriptionRequestParams value,
          $Res Function(RelaySubscriptionRequestParams) then) =
      _$RelaySubscriptionRequestParamsCopyWithImpl<$Res,
          RelaySubscriptionRequestParams>;
  @useResult
  $Res call(
      {@SubscriptionIdConverter() String subscriptionId,
      RelaySubscriptionRequestParamsData subscriptionData});

  $RelaySubscriptionRequestParamsDataCopyWith<$Res> get subscriptionData;
}

/// @nodoc
class _$RelaySubscriptionRequestParamsCopyWithImpl<$Res,
        $Val extends RelaySubscriptionRequestParams>
    implements $RelaySubscriptionRequestParamsCopyWith<$Res> {
  _$RelaySubscriptionRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
    Object? subscriptionData = null,
  }) {
    return _then(_value.copyWith(
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionData: null == subscriptionData
          ? _value.subscriptionData
          : subscriptionData // ignore: cast_nullable_to_non_nullable
              as RelaySubscriptionRequestParamsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RelaySubscriptionRequestParamsDataCopyWith<$Res> get subscriptionData {
    return $RelaySubscriptionRequestParamsDataCopyWith<$Res>(
        _value.subscriptionData, (value) {
      return _then(_value.copyWith(subscriptionData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RelaySubscriptionRequestParamsCopyWith<$Res>
    implements $RelaySubscriptionRequestParamsCopyWith<$Res> {
  factory _$$_RelaySubscriptionRequestParamsCopyWith(
          _$_RelaySubscriptionRequestParams value,
          $Res Function(_$_RelaySubscriptionRequestParams) then) =
      __$$_RelaySubscriptionRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@SubscriptionIdConverter() String subscriptionId,
      RelaySubscriptionRequestParamsData subscriptionData});

  @override
  $RelaySubscriptionRequestParamsDataCopyWith<$Res> get subscriptionData;
}

/// @nodoc
class __$$_RelaySubscriptionRequestParamsCopyWithImpl<$Res>
    extends _$RelaySubscriptionRequestParamsCopyWithImpl<$Res,
        _$_RelaySubscriptionRequestParams>
    implements _$$_RelaySubscriptionRequestParamsCopyWith<$Res> {
  __$$_RelaySubscriptionRequestParamsCopyWithImpl(
      _$_RelaySubscriptionRequestParams _value,
      $Res Function(_$_RelaySubscriptionRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
    Object? subscriptionData = null,
  }) {
    return _then(_$_RelaySubscriptionRequestParams(
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionData: null == subscriptionData
          ? _value.subscriptionData
          : subscriptionData // ignore: cast_nullable_to_non_nullable
              as RelaySubscriptionRequestParamsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelaySubscriptionRequestParams
    implements _RelaySubscriptionRequestParams {
  const _$_RelaySubscriptionRequestParams(
      {@SubscriptionIdConverter() required this.subscriptionId,
      required this.subscriptionData});

  factory _$_RelaySubscriptionRequestParams.fromJson(
          Map<String, dynamic> json) =>
      _$$_RelaySubscriptionRequestParamsFromJson(json);

  @override
  @SubscriptionIdConverter()
  final String subscriptionId;
  @override
  final RelaySubscriptionRequestParamsData subscriptionData;

  @override
  String toString() {
    return 'RelaySubscriptionRequestParams(subscriptionId: $subscriptionId, subscriptionData: $subscriptionData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelaySubscriptionRequestParams &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.subscriptionData, subscriptionData) ||
                other.subscriptionData == subscriptionData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subscriptionId, subscriptionData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelaySubscriptionRequestParamsCopyWith<_$_RelaySubscriptionRequestParams>
      get copyWith => __$$_RelaySubscriptionRequestParamsCopyWithImpl<
          _$_RelaySubscriptionRequestParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelaySubscriptionRequestParamsToJson(
      this,
    );
  }
}

abstract class _RelaySubscriptionRequestParams
    implements RelaySubscriptionRequestParams {
  const factory _RelaySubscriptionRequestParams(
          {@SubscriptionIdConverter() required final String subscriptionId,
          required final RelaySubscriptionRequestParamsData subscriptionData}) =
      _$_RelaySubscriptionRequestParams;

  factory _RelaySubscriptionRequestParams.fromJson(Map<String, dynamic> json) =
      _$_RelaySubscriptionRequestParams.fromJson;

  @override
  @SubscriptionIdConverter()
  String get subscriptionId;
  @override
  RelaySubscriptionRequestParamsData get subscriptionData;
  @override
  @JsonKey(ignore: true)
  _$$_RelaySubscriptionRequestParamsCopyWith<_$_RelaySubscriptionRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

RelaySubscriptionRequestParamsData _$RelaySubscriptionRequestParamsDataFromJson(
    Map<String, dynamic> json) {
  return _RelaySubscriptionRequestParamsData.fromJson(json);
}

/// @nodoc
mixin _$RelaySubscriptionRequestParamsData {
  @TopicConverter()
  String get topic => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelaySubscriptionRequestParamsDataCopyWith<
          RelaySubscriptionRequestParamsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelaySubscriptionRequestParamsDataCopyWith<$Res> {
  factory $RelaySubscriptionRequestParamsDataCopyWith(
          RelaySubscriptionRequestParamsData value,
          $Res Function(RelaySubscriptionRequestParamsData) then) =
      _$RelaySubscriptionRequestParamsDataCopyWithImpl<$Res,
          RelaySubscriptionRequestParamsData>;
  @useResult
  $Res call({@TopicConverter() String topic, String message});
}

/// @nodoc
class _$RelaySubscriptionRequestParamsDataCopyWithImpl<$Res,
        $Val extends RelaySubscriptionRequestParamsData>
    implements $RelaySubscriptionRequestParamsDataCopyWith<$Res> {
  _$RelaySubscriptionRequestParamsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelaySubscriptionRequestParamsDataCopyWith<$Res>
    implements $RelaySubscriptionRequestParamsDataCopyWith<$Res> {
  factory _$$_RelaySubscriptionRequestParamsDataCopyWith(
          _$_RelaySubscriptionRequestParamsData value,
          $Res Function(_$_RelaySubscriptionRequestParamsData) then) =
      __$$_RelaySubscriptionRequestParamsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@TopicConverter() String topic, String message});
}

/// @nodoc
class __$$_RelaySubscriptionRequestParamsDataCopyWithImpl<$Res>
    extends _$RelaySubscriptionRequestParamsDataCopyWithImpl<$Res,
        _$_RelaySubscriptionRequestParamsData>
    implements _$$_RelaySubscriptionRequestParamsDataCopyWith<$Res> {
  __$$_RelaySubscriptionRequestParamsDataCopyWithImpl(
      _$_RelaySubscriptionRequestParamsData _value,
      $Res Function(_$_RelaySubscriptionRequestParamsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? message = null,
  }) {
    return _then(_$_RelaySubscriptionRequestParamsData(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelaySubscriptionRequestParamsData
    implements _RelaySubscriptionRequestParamsData {
  const _$_RelaySubscriptionRequestParamsData(
      {@TopicConverter() required this.topic, required this.message});

  factory _$_RelaySubscriptionRequestParamsData.fromJson(
          Map<String, dynamic> json) =>
      _$$_RelaySubscriptionRequestParamsDataFromJson(json);

  @override
  @TopicConverter()
  final String topic;
  @override
  final String message;

  @override
  String toString() {
    return 'RelaySubscriptionRequestParamsData(topic: $topic, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelaySubscriptionRequestParamsData &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelaySubscriptionRequestParamsDataCopyWith<
          _$_RelaySubscriptionRequestParamsData>
      get copyWith => __$$_RelaySubscriptionRequestParamsDataCopyWithImpl<
          _$_RelaySubscriptionRequestParamsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelaySubscriptionRequestParamsDataToJson(
      this,
    );
  }
}

abstract class _RelaySubscriptionRequestParamsData
    implements RelaySubscriptionRequestParamsData {
  const factory _RelaySubscriptionRequestParamsData(
      {@TopicConverter() required final String topic,
      required final String message}) = _$_RelaySubscriptionRequestParamsData;

  factory _RelaySubscriptionRequestParamsData.fromJson(
          Map<String, dynamic> json) =
      _$_RelaySubscriptionRequestParamsData.fromJson;

  @override
  @TopicConverter()
  String get topic;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_RelaySubscriptionRequestParamsDataCopyWith<
          _$_RelaySubscriptionRequestParamsData>
      get copyWith => throw _privateConstructorUsedError;
}

RelayUnsubscribeRequestParams _$RelayUnsubscribeRequestParamsFromJson(
    Map<String, dynamic> json) {
  return _RelayUnsubscribeRequestParams.fromJson(json);
}

/// @nodoc
mixin _$RelayUnsubscribeRequestParams {
  @TopicConverter()
  String get topic => throw _privateConstructorUsedError;
  @SubscriptionIdConverter()
  String get subscriptionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelayUnsubscribeRequestParamsCopyWith<RelayUnsubscribeRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelayUnsubscribeRequestParamsCopyWith<$Res> {
  factory $RelayUnsubscribeRequestParamsCopyWith(
          RelayUnsubscribeRequestParams value,
          $Res Function(RelayUnsubscribeRequestParams) then) =
      _$RelayUnsubscribeRequestParamsCopyWithImpl<$Res,
          RelayUnsubscribeRequestParams>;
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      @SubscriptionIdConverter() String subscriptionId});
}

/// @nodoc
class _$RelayUnsubscribeRequestParamsCopyWithImpl<$Res,
        $Val extends RelayUnsubscribeRequestParams>
    implements $RelayUnsubscribeRequestParamsCopyWith<$Res> {
  _$RelayUnsubscribeRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? subscriptionId = null,
  }) {
    return _then(_value.copyWith(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelayUnsubscribeRequestParamsCopyWith<$Res>
    implements $RelayUnsubscribeRequestParamsCopyWith<$Res> {
  factory _$$_RelayUnsubscribeRequestParamsCopyWith(
          _$_RelayUnsubscribeRequestParams value,
          $Res Function(_$_RelayUnsubscribeRequestParams) then) =
      __$$_RelayUnsubscribeRequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TopicConverter() String topic,
      @SubscriptionIdConverter() String subscriptionId});
}

/// @nodoc
class __$$_RelayUnsubscribeRequestParamsCopyWithImpl<$Res>
    extends _$RelayUnsubscribeRequestParamsCopyWithImpl<$Res,
        _$_RelayUnsubscribeRequestParams>
    implements _$$_RelayUnsubscribeRequestParamsCopyWith<$Res> {
  __$$_RelayUnsubscribeRequestParamsCopyWithImpl(
      _$_RelayUnsubscribeRequestParams _value,
      $Res Function(_$_RelayUnsubscribeRequestParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? subscriptionId = null,
  }) {
    return _then(_$_RelayUnsubscribeRequestParams(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionId: null == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelayUnsubscribeRequestParams
    implements _RelayUnsubscribeRequestParams {
  const _$_RelayUnsubscribeRequestParams(
      {@TopicConverter() required this.topic,
      @SubscriptionIdConverter() required this.subscriptionId});

  factory _$_RelayUnsubscribeRequestParams.fromJson(
          Map<String, dynamic> json) =>
      _$$_RelayUnsubscribeRequestParamsFromJson(json);

  @override
  @TopicConverter()
  final String topic;
  @override
  @SubscriptionIdConverter()
  final String subscriptionId;

  @override
  String toString() {
    return 'RelayUnsubscribeRequestParams(topic: $topic, subscriptionId: $subscriptionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelayUnsubscribeRequestParams &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, subscriptionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelayUnsubscribeRequestParamsCopyWith<_$_RelayUnsubscribeRequestParams>
      get copyWith => __$$_RelayUnsubscribeRequestParamsCopyWithImpl<
          _$_RelayUnsubscribeRequestParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelayUnsubscribeRequestParamsToJson(
      this,
    );
  }
}

abstract class _RelayUnsubscribeRequestParams
    implements RelayUnsubscribeRequestParams {
  const factory _RelayUnsubscribeRequestParams(
          {@TopicConverter() required final String topic,
          @SubscriptionIdConverter() required final String subscriptionId}) =
      _$_RelayUnsubscribeRequestParams;

  factory _RelayUnsubscribeRequestParams.fromJson(Map<String, dynamic> json) =
      _$_RelayUnsubscribeRequestParams.fromJson;

  @override
  @TopicConverter()
  String get topic;
  @override
  @SubscriptionIdConverter()
  String get subscriptionId;
  @override
  @JsonKey(ignore: true)
  _$$_RelayUnsubscribeRequestParamsCopyWith<_$_RelayUnsubscribeRequestParams>
      get copyWith => throw _privateConstructorUsedError;
}
