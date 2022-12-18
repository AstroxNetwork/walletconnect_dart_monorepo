import 'package:walletconnect_mono_foundation/foundation.dart';

abstract class WalletConnectError extends Error {
  final String? message;

  WalletConnectError([this.message]);
}

class RemoteJsonRpcError extends WalletConnectError {
  final int code;

  RemoteJsonRpcError(this.code, [super.message]);

  JsonRpcOnError toJsonRpcOnError() {
    return JsonRpcOnError(code: code, message: message!);
  }

  @override
  String toString() {
  return '$runtimeType($code): $message';
  }
}

class MessageSendingError extends WalletConnectError {
  MessageSendingError([super.message]);
}

class NoRelayConnectionError extends WalletConnectError {
  NoRelayConnectionError([super.message]);
}
