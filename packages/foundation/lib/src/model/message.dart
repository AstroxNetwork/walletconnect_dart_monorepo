part of 'relay.dart';

@freezed
class RelayMessage with _$RelayMessage implements Relay {
  factory RelayMessage.text(
    @JsonKey(name: 'value') String value,
  ) = RelayMessageText;

  factory RelayMessage.bytes(
    @JsonKey(name: 'value') List<int> value,
  ) = RelayMessageBytes;
}
