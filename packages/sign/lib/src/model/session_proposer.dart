import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_core/core.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

part 'session_proposer.freezed.dart';

part 'session_proposer.g.dart';

@freezed
class SessionProposer with _$SessionProposer {
  const factory SessionProposer({
    @Uint8ListToHexConverter() required Uint8List publicKey,
    required AppMetaData metadata,
  }) = _SessionProposer;

  factory SessionProposer.fromJson(Map<String, dynamic> json) =>
      _$SessionProposerFromJson(json);
}

typedef SessionParticipant = SessionProposer;
