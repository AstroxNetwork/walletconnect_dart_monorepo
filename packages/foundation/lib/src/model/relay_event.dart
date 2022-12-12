part of 'relay.dart';

@freezed
class RelayEvent with _$RelayEvent implements Relay {
  factory RelayEvent.onConnectionOpened(Object webSocket) =
      RelayEventOnConnectionOpened;

  factory RelayEvent.onMessageReceived(RelayMessage message) =
      RelayEventOnMessageReceived;

  factory RelayEvent.onConnectionClosing(RelayShutdownReason reason) =
      RelayEventOnConnectionClosing;

  factory RelayEvent.onConnectionClosed(RelayShutdownReason reason) =
      RelayEventOnConnectionClosed;

  factory RelayEvent.onConnectionFailed(Error error) =
      RelayEventOnConnectionFailed;
}

@freezed
class RelayShutdownReason with _$RelayShutdownReason {
  const factory RelayShutdownReason({
    required int code,
    required String reason,
  }) = _RelayShutdownReason;

  factory RelayShutdownReason.fromJson(Map<String, Object?> json) =>
      _$RelayShutdownReasonFromJson(json);
}
