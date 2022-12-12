import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_event.freezed.dart';

@freezed
class ClientEvent with _$ClientEvent {
  const factory ClientEvent.data(Map<String, dynamic> data) = ClientDataEvent;

  const factory ClientEvent.error(
    Object error,
    StackTrace stackTrace,
  ) = ClientErrorEvent;
}
