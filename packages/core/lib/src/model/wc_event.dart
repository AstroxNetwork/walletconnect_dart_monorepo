import 'package:freezed_annotation/freezed_annotation.dart';

part 'wc_event.freezed.dart';

@freezed
class WCEvent<T> with _$WCEvent {
  const factory WCEvent(String name, T payload) = _WCEvent;
}
