// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'core.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoreParams _$CoreParamsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'ping':
      return CoreParamsPing.fromJson(json);
    case 'disconnect':
      return CoreParamsDisconnect.fromJson(json);
    case 'activate':
      return CoreParamsActivate.fromJson(json);
    case 'updateExpiry':
      return CoreParamsUpdateExpiry.fromJson(json);
    case 'updateMetadata':
      return CoreParamsUpdateMetadata.fromJson(json);
    case 'pair':
      return CoreParamsPair.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CoreParams',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CoreParams {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) ping,
    required TResult Function(String topic) disconnect,
    required TResult Function(String topic) activate,
    required TResult Function(String topic, Duration expiry) updateExpiry,
    required TResult Function(
            String topic, AppMetaDataType type, AppMetaData metadata)
        updateMetadata,
    required TResult Function(String uri) pair,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? ping,
    TResult? Function(String topic)? disconnect,
    TResult? Function(String topic)? activate,
    TResult? Function(String topic, Duration expiry)? updateExpiry,
    TResult? Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult? Function(String uri)? pair,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? ping,
    TResult Function(String topic)? disconnect,
    TResult Function(String topic)? activate,
    TResult Function(String topic, Duration expiry)? updateExpiry,
    TResult Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult Function(String uri)? pair,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoreParamsPing value) ping,
    required TResult Function(CoreParamsDisconnect value) disconnect,
    required TResult Function(CoreParamsActivate value) activate,
    required TResult Function(CoreParamsUpdateExpiry value) updateExpiry,
    required TResult Function(CoreParamsUpdateMetadata value) updateMetadata,
    required TResult Function(CoreParamsPair value) pair,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoreParamsPing value)? ping,
    TResult? Function(CoreParamsDisconnect value)? disconnect,
    TResult? Function(CoreParamsActivate value)? activate,
    TResult? Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult? Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult? Function(CoreParamsPair value)? pair,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoreParamsPing value)? ping,
    TResult Function(CoreParamsDisconnect value)? disconnect,
    TResult Function(CoreParamsActivate value)? activate,
    TResult Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult Function(CoreParamsPair value)? pair,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreParamsCopyWith<$Res> {
  factory $CoreParamsCopyWith(
          CoreParams value, $Res Function(CoreParams) then) =
      _$CoreParamsCopyWithImpl<$Res, CoreParams>;
}

/// @nodoc
class _$CoreParamsCopyWithImpl<$Res, $Val extends CoreParams>
    implements $CoreParamsCopyWith<$Res> {
  _$CoreParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CoreParamsPingCopyWith<$Res> {
  factory _$$CoreParamsPingCopyWith(
          _$CoreParamsPing value, $Res Function(_$CoreParamsPing) then) =
      __$$CoreParamsPingCopyWithImpl<$Res>;
  @useResult
  $Res call({String topic});
}

/// @nodoc
class __$$CoreParamsPingCopyWithImpl<$Res>
    extends _$CoreParamsCopyWithImpl<$Res, _$CoreParamsPing>
    implements _$$CoreParamsPingCopyWith<$Res> {
  __$$CoreParamsPingCopyWithImpl(
      _$CoreParamsPing _value, $Res Function(_$CoreParamsPing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$CoreParamsPing(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoreParamsPing implements CoreParamsPing {
  const _$CoreParamsPing(this.topic, {final String? $type})
      : $type = $type ?? 'ping';

  factory _$CoreParamsPing.fromJson(Map<String, dynamic> json) =>
      _$$CoreParamsPingFromJson(json);

  @override
  final String topic;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CoreParams.ping(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreParamsPing &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreParamsPingCopyWith<_$CoreParamsPing> get copyWith =>
      __$$CoreParamsPingCopyWithImpl<_$CoreParamsPing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) ping,
    required TResult Function(String topic) disconnect,
    required TResult Function(String topic) activate,
    required TResult Function(String topic, Duration expiry) updateExpiry,
    required TResult Function(
            String topic, AppMetaDataType type, AppMetaData metadata)
        updateMetadata,
    required TResult Function(String uri) pair,
  }) {
    return ping(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? ping,
    TResult? Function(String topic)? disconnect,
    TResult? Function(String topic)? activate,
    TResult? Function(String topic, Duration expiry)? updateExpiry,
    TResult? Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult? Function(String uri)? pair,
  }) {
    return ping?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? ping,
    TResult Function(String topic)? disconnect,
    TResult Function(String topic)? activate,
    TResult Function(String topic, Duration expiry)? updateExpiry,
    TResult Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult Function(String uri)? pair,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoreParamsPing value) ping,
    required TResult Function(CoreParamsDisconnect value) disconnect,
    required TResult Function(CoreParamsActivate value) activate,
    required TResult Function(CoreParamsUpdateExpiry value) updateExpiry,
    required TResult Function(CoreParamsUpdateMetadata value) updateMetadata,
    required TResult Function(CoreParamsPair value) pair,
  }) {
    return ping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoreParamsPing value)? ping,
    TResult? Function(CoreParamsDisconnect value)? disconnect,
    TResult? Function(CoreParamsActivate value)? activate,
    TResult? Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult? Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult? Function(CoreParamsPair value)? pair,
  }) {
    return ping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoreParamsPing value)? ping,
    TResult Function(CoreParamsDisconnect value)? disconnect,
    TResult Function(CoreParamsActivate value)? activate,
    TResult Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult Function(CoreParamsPair value)? pair,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CoreParamsPingToJson(
      this,
    );
  }
}

abstract class CoreParamsPing implements CoreParams {
  const factory CoreParamsPing(final String topic) = _$CoreParamsPing;

  factory CoreParamsPing.fromJson(Map<String, dynamic> json) =
      _$CoreParamsPing.fromJson;

  String get topic;
  @JsonKey(ignore: true)
  _$$CoreParamsPingCopyWith<_$CoreParamsPing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoreParamsDisconnectCopyWith<$Res> {
  factory _$$CoreParamsDisconnectCopyWith(_$CoreParamsDisconnect value,
          $Res Function(_$CoreParamsDisconnect) then) =
      __$$CoreParamsDisconnectCopyWithImpl<$Res>;
  @useResult
  $Res call({String topic});
}

/// @nodoc
class __$$CoreParamsDisconnectCopyWithImpl<$Res>
    extends _$CoreParamsCopyWithImpl<$Res, _$CoreParamsDisconnect>
    implements _$$CoreParamsDisconnectCopyWith<$Res> {
  __$$CoreParamsDisconnectCopyWithImpl(_$CoreParamsDisconnect _value,
      $Res Function(_$CoreParamsDisconnect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$CoreParamsDisconnect(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoreParamsDisconnect implements CoreParamsDisconnect {
  const _$CoreParamsDisconnect(this.topic, {final String? $type})
      : $type = $type ?? 'disconnect';

  factory _$CoreParamsDisconnect.fromJson(Map<String, dynamic> json) =>
      _$$CoreParamsDisconnectFromJson(json);

  @override
  final String topic;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CoreParams.disconnect(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreParamsDisconnect &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreParamsDisconnectCopyWith<_$CoreParamsDisconnect> get copyWith =>
      __$$CoreParamsDisconnectCopyWithImpl<_$CoreParamsDisconnect>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) ping,
    required TResult Function(String topic) disconnect,
    required TResult Function(String topic) activate,
    required TResult Function(String topic, Duration expiry) updateExpiry,
    required TResult Function(
            String topic, AppMetaDataType type, AppMetaData metadata)
        updateMetadata,
    required TResult Function(String uri) pair,
  }) {
    return disconnect(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? ping,
    TResult? Function(String topic)? disconnect,
    TResult? Function(String topic)? activate,
    TResult? Function(String topic, Duration expiry)? updateExpiry,
    TResult? Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult? Function(String uri)? pair,
  }) {
    return disconnect?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? ping,
    TResult Function(String topic)? disconnect,
    TResult Function(String topic)? activate,
    TResult Function(String topic, Duration expiry)? updateExpiry,
    TResult Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult Function(String uri)? pair,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoreParamsPing value) ping,
    required TResult Function(CoreParamsDisconnect value) disconnect,
    required TResult Function(CoreParamsActivate value) activate,
    required TResult Function(CoreParamsUpdateExpiry value) updateExpiry,
    required TResult Function(CoreParamsUpdateMetadata value) updateMetadata,
    required TResult Function(CoreParamsPair value) pair,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoreParamsPing value)? ping,
    TResult? Function(CoreParamsDisconnect value)? disconnect,
    TResult? Function(CoreParamsActivate value)? activate,
    TResult? Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult? Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult? Function(CoreParamsPair value)? pair,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoreParamsPing value)? ping,
    TResult Function(CoreParamsDisconnect value)? disconnect,
    TResult Function(CoreParamsActivate value)? activate,
    TResult Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult Function(CoreParamsPair value)? pair,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CoreParamsDisconnectToJson(
      this,
    );
  }
}

abstract class CoreParamsDisconnect implements CoreParams {
  const factory CoreParamsDisconnect(final String topic) =
      _$CoreParamsDisconnect;

  factory CoreParamsDisconnect.fromJson(Map<String, dynamic> json) =
      _$CoreParamsDisconnect.fromJson;

  String get topic;
  @JsonKey(ignore: true)
  _$$CoreParamsDisconnectCopyWith<_$CoreParamsDisconnect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoreParamsActivateCopyWith<$Res> {
  factory _$$CoreParamsActivateCopyWith(_$CoreParamsActivate value,
          $Res Function(_$CoreParamsActivate) then) =
      __$$CoreParamsActivateCopyWithImpl<$Res>;
  @useResult
  $Res call({String topic});
}

/// @nodoc
class __$$CoreParamsActivateCopyWithImpl<$Res>
    extends _$CoreParamsCopyWithImpl<$Res, _$CoreParamsActivate>
    implements _$$CoreParamsActivateCopyWith<$Res> {
  __$$CoreParamsActivateCopyWithImpl(
      _$CoreParamsActivate _value, $Res Function(_$CoreParamsActivate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$CoreParamsActivate(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoreParamsActivate implements CoreParamsActivate {
  const _$CoreParamsActivate(this.topic, {final String? $type})
      : $type = $type ?? 'activate';

  factory _$CoreParamsActivate.fromJson(Map<String, dynamic> json) =>
      _$$CoreParamsActivateFromJson(json);

  @override
  final String topic;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CoreParams.activate(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreParamsActivate &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreParamsActivateCopyWith<_$CoreParamsActivate> get copyWith =>
      __$$CoreParamsActivateCopyWithImpl<_$CoreParamsActivate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) ping,
    required TResult Function(String topic) disconnect,
    required TResult Function(String topic) activate,
    required TResult Function(String topic, Duration expiry) updateExpiry,
    required TResult Function(
            String topic, AppMetaDataType type, AppMetaData metadata)
        updateMetadata,
    required TResult Function(String uri) pair,
  }) {
    return activate(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? ping,
    TResult? Function(String topic)? disconnect,
    TResult? Function(String topic)? activate,
    TResult? Function(String topic, Duration expiry)? updateExpiry,
    TResult? Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult? Function(String uri)? pair,
  }) {
    return activate?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? ping,
    TResult Function(String topic)? disconnect,
    TResult Function(String topic)? activate,
    TResult Function(String topic, Duration expiry)? updateExpiry,
    TResult Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult Function(String uri)? pair,
    required TResult orElse(),
  }) {
    if (activate != null) {
      return activate(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoreParamsPing value) ping,
    required TResult Function(CoreParamsDisconnect value) disconnect,
    required TResult Function(CoreParamsActivate value) activate,
    required TResult Function(CoreParamsUpdateExpiry value) updateExpiry,
    required TResult Function(CoreParamsUpdateMetadata value) updateMetadata,
    required TResult Function(CoreParamsPair value) pair,
  }) {
    return activate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoreParamsPing value)? ping,
    TResult? Function(CoreParamsDisconnect value)? disconnect,
    TResult? Function(CoreParamsActivate value)? activate,
    TResult? Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult? Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult? Function(CoreParamsPair value)? pair,
  }) {
    return activate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoreParamsPing value)? ping,
    TResult Function(CoreParamsDisconnect value)? disconnect,
    TResult Function(CoreParamsActivate value)? activate,
    TResult Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult Function(CoreParamsPair value)? pair,
    required TResult orElse(),
  }) {
    if (activate != null) {
      return activate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CoreParamsActivateToJson(
      this,
    );
  }
}

abstract class CoreParamsActivate implements CoreParams {
  const factory CoreParamsActivate(final String topic) = _$CoreParamsActivate;

  factory CoreParamsActivate.fromJson(Map<String, dynamic> json) =
      _$CoreParamsActivate.fromJson;

  String get topic;
  @JsonKey(ignore: true)
  _$$CoreParamsActivateCopyWith<_$CoreParamsActivate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoreParamsUpdateExpiryCopyWith<$Res> {
  factory _$$CoreParamsUpdateExpiryCopyWith(_$CoreParamsUpdateExpiry value,
          $Res Function(_$CoreParamsUpdateExpiry) then) =
      __$$CoreParamsUpdateExpiryCopyWithImpl<$Res>;
  @useResult
  $Res call({String topic, Duration expiry});
}

/// @nodoc
class __$$CoreParamsUpdateExpiryCopyWithImpl<$Res>
    extends _$CoreParamsCopyWithImpl<$Res, _$CoreParamsUpdateExpiry>
    implements _$$CoreParamsUpdateExpiryCopyWith<$Res> {
  __$$CoreParamsUpdateExpiryCopyWithImpl(_$CoreParamsUpdateExpiry _value,
      $Res Function(_$CoreParamsUpdateExpiry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? expiry = null,
  }) {
    return _then(_$CoreParamsUpdateExpiry(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoreParamsUpdateExpiry implements CoreParamsUpdateExpiry {
  const _$CoreParamsUpdateExpiry(this.topic, this.expiry, {final String? $type})
      : $type = $type ?? 'updateExpiry';

  factory _$CoreParamsUpdateExpiry.fromJson(Map<String, dynamic> json) =>
      _$$CoreParamsUpdateExpiryFromJson(json);

  @override
  final String topic;
  @override
  final Duration expiry;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CoreParams.updateExpiry(topic: $topic, expiry: $expiry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreParamsUpdateExpiry &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreParamsUpdateExpiryCopyWith<_$CoreParamsUpdateExpiry> get copyWith =>
      __$$CoreParamsUpdateExpiryCopyWithImpl<_$CoreParamsUpdateExpiry>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) ping,
    required TResult Function(String topic) disconnect,
    required TResult Function(String topic) activate,
    required TResult Function(String topic, Duration expiry) updateExpiry,
    required TResult Function(
            String topic, AppMetaDataType type, AppMetaData metadata)
        updateMetadata,
    required TResult Function(String uri) pair,
  }) {
    return updateExpiry(topic, expiry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? ping,
    TResult? Function(String topic)? disconnect,
    TResult? Function(String topic)? activate,
    TResult? Function(String topic, Duration expiry)? updateExpiry,
    TResult? Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult? Function(String uri)? pair,
  }) {
    return updateExpiry?.call(topic, expiry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? ping,
    TResult Function(String topic)? disconnect,
    TResult Function(String topic)? activate,
    TResult Function(String topic, Duration expiry)? updateExpiry,
    TResult Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult Function(String uri)? pair,
    required TResult orElse(),
  }) {
    if (updateExpiry != null) {
      return updateExpiry(topic, expiry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoreParamsPing value) ping,
    required TResult Function(CoreParamsDisconnect value) disconnect,
    required TResult Function(CoreParamsActivate value) activate,
    required TResult Function(CoreParamsUpdateExpiry value) updateExpiry,
    required TResult Function(CoreParamsUpdateMetadata value) updateMetadata,
    required TResult Function(CoreParamsPair value) pair,
  }) {
    return updateExpiry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoreParamsPing value)? ping,
    TResult? Function(CoreParamsDisconnect value)? disconnect,
    TResult? Function(CoreParamsActivate value)? activate,
    TResult? Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult? Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult? Function(CoreParamsPair value)? pair,
  }) {
    return updateExpiry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoreParamsPing value)? ping,
    TResult Function(CoreParamsDisconnect value)? disconnect,
    TResult Function(CoreParamsActivate value)? activate,
    TResult Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult Function(CoreParamsPair value)? pair,
    required TResult orElse(),
  }) {
    if (updateExpiry != null) {
      return updateExpiry(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CoreParamsUpdateExpiryToJson(
      this,
    );
  }
}

abstract class CoreParamsUpdateExpiry implements CoreParams {
  const factory CoreParamsUpdateExpiry(
      final String topic, final Duration expiry) = _$CoreParamsUpdateExpiry;

  factory CoreParamsUpdateExpiry.fromJson(Map<String, dynamic> json) =
      _$CoreParamsUpdateExpiry.fromJson;

  String get topic;
  Duration get expiry;
  @JsonKey(ignore: true)
  _$$CoreParamsUpdateExpiryCopyWith<_$CoreParamsUpdateExpiry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoreParamsUpdateMetadataCopyWith<$Res> {
  factory _$$CoreParamsUpdateMetadataCopyWith(_$CoreParamsUpdateMetadata value,
          $Res Function(_$CoreParamsUpdateMetadata) then) =
      __$$CoreParamsUpdateMetadataCopyWithImpl<$Res>;
  @useResult
  $Res call({String topic, AppMetaDataType type, AppMetaData metadata});

  $AppMetaDataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$CoreParamsUpdateMetadataCopyWithImpl<$Res>
    extends _$CoreParamsCopyWithImpl<$Res, _$CoreParamsUpdateMetadata>
    implements _$$CoreParamsUpdateMetadataCopyWith<$Res> {
  __$$CoreParamsUpdateMetadataCopyWithImpl(_$CoreParamsUpdateMetadata _value,
      $Res Function(_$CoreParamsUpdateMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
    Object? type = null,
    Object? metadata = null,
  }) {
    return _then(_$CoreParamsUpdateMetadata(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AppMetaDataType,
      null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as AppMetaData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetaDataCopyWith<$Res> get metadata {
    return $AppMetaDataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CoreParamsUpdateMetadata implements CoreParamsUpdateMetadata {
  const _$CoreParamsUpdateMetadata(this.topic, this.type, this.metadata,
      {final String? $type})
      : $type = $type ?? 'updateMetadata';

  factory _$CoreParamsUpdateMetadata.fromJson(Map<String, dynamic> json) =>
      _$$CoreParamsUpdateMetadataFromJson(json);

  @override
  final String topic;
  @override
  final AppMetaDataType type;
  @override
  final AppMetaData metadata;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CoreParams.updateMetadata(topic: $topic, type: $type, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreParamsUpdateMetadata &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topic, type, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreParamsUpdateMetadataCopyWith<_$CoreParamsUpdateMetadata>
      get copyWith =>
          __$$CoreParamsUpdateMetadataCopyWithImpl<_$CoreParamsUpdateMetadata>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) ping,
    required TResult Function(String topic) disconnect,
    required TResult Function(String topic) activate,
    required TResult Function(String topic, Duration expiry) updateExpiry,
    required TResult Function(
            String topic, AppMetaDataType type, AppMetaData metadata)
        updateMetadata,
    required TResult Function(String uri) pair,
  }) {
    return updateMetadata(topic, type, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? ping,
    TResult? Function(String topic)? disconnect,
    TResult? Function(String topic)? activate,
    TResult? Function(String topic, Duration expiry)? updateExpiry,
    TResult? Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult? Function(String uri)? pair,
  }) {
    return updateMetadata?.call(topic, type, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? ping,
    TResult Function(String topic)? disconnect,
    TResult Function(String topic)? activate,
    TResult Function(String topic, Duration expiry)? updateExpiry,
    TResult Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult Function(String uri)? pair,
    required TResult orElse(),
  }) {
    if (updateMetadata != null) {
      return updateMetadata(topic, type, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoreParamsPing value) ping,
    required TResult Function(CoreParamsDisconnect value) disconnect,
    required TResult Function(CoreParamsActivate value) activate,
    required TResult Function(CoreParamsUpdateExpiry value) updateExpiry,
    required TResult Function(CoreParamsUpdateMetadata value) updateMetadata,
    required TResult Function(CoreParamsPair value) pair,
  }) {
    return updateMetadata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoreParamsPing value)? ping,
    TResult? Function(CoreParamsDisconnect value)? disconnect,
    TResult? Function(CoreParamsActivate value)? activate,
    TResult? Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult? Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult? Function(CoreParamsPair value)? pair,
  }) {
    return updateMetadata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoreParamsPing value)? ping,
    TResult Function(CoreParamsDisconnect value)? disconnect,
    TResult Function(CoreParamsActivate value)? activate,
    TResult Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult Function(CoreParamsPair value)? pair,
    required TResult orElse(),
  }) {
    if (updateMetadata != null) {
      return updateMetadata(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CoreParamsUpdateMetadataToJson(
      this,
    );
  }
}

abstract class CoreParamsUpdateMetadata implements CoreParams {
  const factory CoreParamsUpdateMetadata(
      final String topic,
      final AppMetaDataType type,
      final AppMetaData metadata) = _$CoreParamsUpdateMetadata;

  factory CoreParamsUpdateMetadata.fromJson(Map<String, dynamic> json) =
      _$CoreParamsUpdateMetadata.fromJson;

  String get topic;
  AppMetaDataType get type;
  AppMetaData get metadata;
  @JsonKey(ignore: true)
  _$$CoreParamsUpdateMetadataCopyWith<_$CoreParamsUpdateMetadata>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoreParamsPairCopyWith<$Res> {
  factory _$$CoreParamsPairCopyWith(
          _$CoreParamsPair value, $Res Function(_$CoreParamsPair) then) =
      __$$CoreParamsPairCopyWithImpl<$Res>;
  @useResult
  $Res call({String uri});
}

/// @nodoc
class __$$CoreParamsPairCopyWithImpl<$Res>
    extends _$CoreParamsCopyWithImpl<$Res, _$CoreParamsPair>
    implements _$$CoreParamsPairCopyWith<$Res> {
  __$$CoreParamsPairCopyWithImpl(
      _$CoreParamsPair _value, $Res Function(_$CoreParamsPair) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$CoreParamsPair(
      null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoreParamsPair implements CoreParamsPair {
  const _$CoreParamsPair(this.uri, {final String? $type})
      : $type = $type ?? 'pair';

  factory _$CoreParamsPair.fromJson(Map<String, dynamic> json) =>
      _$$CoreParamsPairFromJson(json);

  @override
  final String uri;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CoreParams.pair(uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreParamsPair &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreParamsPairCopyWith<_$CoreParamsPair> get copyWith =>
      __$$CoreParamsPairCopyWithImpl<_$CoreParamsPair>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String topic) ping,
    required TResult Function(String topic) disconnect,
    required TResult Function(String topic) activate,
    required TResult Function(String topic, Duration expiry) updateExpiry,
    required TResult Function(
            String topic, AppMetaDataType type, AppMetaData metadata)
        updateMetadata,
    required TResult Function(String uri) pair,
  }) {
    return pair(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String topic)? ping,
    TResult? Function(String topic)? disconnect,
    TResult? Function(String topic)? activate,
    TResult? Function(String topic, Duration expiry)? updateExpiry,
    TResult? Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult? Function(String uri)? pair,
  }) {
    return pair?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String topic)? ping,
    TResult Function(String topic)? disconnect,
    TResult Function(String topic)? activate,
    TResult Function(String topic, Duration expiry)? updateExpiry,
    TResult Function(String topic, AppMetaDataType type, AppMetaData metadata)?
        updateMetadata,
    TResult Function(String uri)? pair,
    required TResult orElse(),
  }) {
    if (pair != null) {
      return pair(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoreParamsPing value) ping,
    required TResult Function(CoreParamsDisconnect value) disconnect,
    required TResult Function(CoreParamsActivate value) activate,
    required TResult Function(CoreParamsUpdateExpiry value) updateExpiry,
    required TResult Function(CoreParamsUpdateMetadata value) updateMetadata,
    required TResult Function(CoreParamsPair value) pair,
  }) {
    return pair(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoreParamsPing value)? ping,
    TResult? Function(CoreParamsDisconnect value)? disconnect,
    TResult? Function(CoreParamsActivate value)? activate,
    TResult? Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult? Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult? Function(CoreParamsPair value)? pair,
  }) {
    return pair?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoreParamsPing value)? ping,
    TResult Function(CoreParamsDisconnect value)? disconnect,
    TResult Function(CoreParamsActivate value)? activate,
    TResult Function(CoreParamsUpdateExpiry value)? updateExpiry,
    TResult Function(CoreParamsUpdateMetadata value)? updateMetadata,
    TResult Function(CoreParamsPair value)? pair,
    required TResult orElse(),
  }) {
    if (pair != null) {
      return pair(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CoreParamsPairToJson(
      this,
    );
  }
}

abstract class CoreParamsPair implements CoreParams {
  const factory CoreParamsPair(final String uri) = _$CoreParamsPair;

  factory CoreParamsPair.fromJson(Map<String, dynamic> json) =
      _$CoreParamsPair.fromJson;

  String get uri;
  @JsonKey(ignore: true)
  _$$CoreParamsPairCopyWith<_$CoreParamsPair> get copyWith =>
      throw _privateConstructorUsedError;
}
