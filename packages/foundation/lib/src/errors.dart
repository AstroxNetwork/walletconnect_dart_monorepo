abstract class WalletConnectError extends Error {
  final String? message;

  WalletConnectError([this.message]);
}

class RemoteJsonRpcError extends WalletConnectError {
  final int code;

  RemoteJsonRpcError(this.code, [super.message]);
}

class MessageSendingError extends WalletConnectError {
  MessageSendingError([super.message]);
}

class NoRelayConnectionError extends WalletConnectError {
  NoRelayConnectionError([super.message]);
}
