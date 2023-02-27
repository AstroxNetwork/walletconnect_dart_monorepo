// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Participants _$ParticipantsFromJson(Map<String, dynamic> json) {
  return _Participants.fromJson(json);
}

/// @nodoc
mixin _$Participants {
  @Uint8ListToHexConverter()
  Uint8List get senderPublicKey => throw _privateConstructorUsedError;
  @Uint8ListToHexConverter()
  Uint8List get receiverPublicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantsCopyWith<Participants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantsCopyWith<$Res> {
  factory $ParticipantsCopyWith(
          Participants value, $Res Function(Participants) then) =
      _$ParticipantsCopyWithImpl<$Res, Participants>;
  @useResult
  $Res call(
      {@Uint8ListToHexConverter() Uint8List senderPublicKey,
      @Uint8ListToHexConverter() Uint8List receiverPublicKey});
}

/// @nodoc
class _$ParticipantsCopyWithImpl<$Res, $Val extends Participants>
    implements $ParticipantsCopyWith<$Res> {
  _$ParticipantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderPublicKey = null,
    Object? receiverPublicKey = null,
  }) {
    return _then(_value.copyWith(
      senderPublicKey: null == senderPublicKey
          ? _value.senderPublicKey
          : senderPublicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      receiverPublicKey: null == receiverPublicKey
          ? _value.receiverPublicKey
          : receiverPublicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticipantsCopyWith<$Res>
    implements $ParticipantsCopyWith<$Res> {
  factory _$$_ParticipantsCopyWith(
          _$_Participants value, $Res Function(_$_Participants) then) =
      __$$_ParticipantsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Uint8ListToHexConverter() Uint8List senderPublicKey,
      @Uint8ListToHexConverter() Uint8List receiverPublicKey});
}

/// @nodoc
class __$$_ParticipantsCopyWithImpl<$Res>
    extends _$ParticipantsCopyWithImpl<$Res, _$_Participants>
    implements _$$_ParticipantsCopyWith<$Res> {
  __$$_ParticipantsCopyWithImpl(
      _$_Participants _value, $Res Function(_$_Participants) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderPublicKey = null,
    Object? receiverPublicKey = null,
  }) {
    return _then(_$_Participants(
      senderPublicKey: null == senderPublicKey
          ? _value.senderPublicKey
          : senderPublicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      receiverPublicKey: null == receiverPublicKey
          ? _value.receiverPublicKey
          : receiverPublicKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Participants implements _Participants {
  const _$_Participants(
      {@Uint8ListToHexConverter() required this.senderPublicKey,
      @Uint8ListToHexConverter() required this.receiverPublicKey});

  factory _$_Participants.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantsFromJson(json);

  @override
  @Uint8ListToHexConverter()
  final Uint8List senderPublicKey;
  @override
  @Uint8ListToHexConverter()
  final Uint8List receiverPublicKey;

  @override
  String toString() {
    return 'Participants(senderPublicKey: $senderPublicKey, receiverPublicKey: $receiverPublicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Participants &&
            const DeepCollectionEquality()
                .equals(other.senderPublicKey, senderPublicKey) &&
            const DeepCollectionEquality()
                .equals(other.receiverPublicKey, receiverPublicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(senderPublicKey),
      const DeepCollectionEquality().hash(receiverPublicKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticipantsCopyWith<_$_Participants> get copyWith =>
      __$$_ParticipantsCopyWithImpl<_$_Participants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantsToJson(
      this,
    );
  }
}

abstract class _Participants implements Participants {
  const factory _Participants(
      {@Uint8ListToHexConverter()
          required final Uint8List senderPublicKey,
      @Uint8ListToHexConverter()
          required final Uint8List receiverPublicKey}) = _$_Participants;

  factory _Participants.fromJson(Map<String, dynamic> json) =
      _$_Participants.fromJson;

  @override
  @Uint8ListToHexConverter()
  Uint8List get senderPublicKey;
  @override
  @Uint8ListToHexConverter()
  Uint8List get receiverPublicKey;
  @override
  @JsonKey(ignore: true)
  _$$_ParticipantsCopyWith<_$_Participants> get copyWith =>
      throw _privateConstructorUsedError;
}
