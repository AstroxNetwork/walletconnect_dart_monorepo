import 'dart:async';

abstract class WalletConnectError extends Error {
  final String? message;

  WalletConnectError([this.message]);
}




class MessageSendingError extends WalletConnectError {
  MessageSendingError([super.message]);
}


class NoRelayConnectionError extends WalletConnectError {
  NoRelayConnectionError([super.message]);
}
