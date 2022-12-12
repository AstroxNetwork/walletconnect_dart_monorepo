import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

part 'session_event.freezed.dart';

part 'session_event.g.dart';

@freezed
class SessionEvent with _$SessionEvent {
  const factory SessionEvent({
    required String name,
    @ObjectConverter() required Object data,
  }) = _SessionEvent;

  factory SessionEvent.fromJson(Map<String, dynamic> json) =>
      _$SessionEventFromJson(json);
}
