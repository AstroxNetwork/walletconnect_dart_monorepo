import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';
import 'dart:typed_data';

part 'participants.freezed.dart';

part 'participants.g.dart';

@freezed
class Participants with _$Participants {
  const factory Participants({
    @Uint8ListToHexConverter() required PublicKey senderPublicKey,
    @Uint8ListToHexConverter() required PublicKey receiverPublicKey,
  }) = _Participants;

  factory Participants.fromJson(Map<String, Object?> json) =>
      _$ParticipantsFromJson(json);
}
