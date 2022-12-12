import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_core/core.dart';

part 'requester.freezed.dart';

part 'requester.g.dart';

@freezed
class Requester with _$Requester {
  const factory Requester({
    required String publicKey,
    required AppMetaData metadata,
  }) = _Requester;

  factory Requester.fromJson(Map<String, dynamic> json) =>
      _$RequesterFromJson(json);
}

typedef SessionProposer = Requester;
