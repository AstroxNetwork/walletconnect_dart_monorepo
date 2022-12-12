import 'dart:async';
import 'dart:convert';

import 'package:walletconnect_mono_foundation/foundation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

enum ConnectionEvent {
  connect,
  disconnect,
  ;
}

abstract class ConnectionController {}

class ConnectionAutomatic implements ConnectionController {}

class ConnectionManual implements ConnectionController {
  void connect() {}

  void disconnect() {}
}


class SocketClient {
  SocketClient({
    required this.uri,
    this.retryTimes = 3,
    this.onData,
    this.onError,
  }) : _retryTimes = retryTimes;

  final Uri uri;
  final int retryTimes;
  final OnData<Object?>? onData;
  final OnError? onError;
  int _retryTimes;

  bool _connected = false;

  bool get connected => _connected;

  Future<void> get ready => _channel.ready;

  late WebSocketChannel _channel;

  late StreamSubscription _subscription;

  StreamSubscription? _reconnectSubscription;

  Future<void> connect() {
    if (_connected) {
      _retryTimes = retryTimes;
      disconnect();
    }
    _retryTimes--;
    _channel = WebSocketChannel.connect(uri);
    _subscription = _channel.stream.listen(
      onData,
      onError: _onError,
      onDone: _onDone,
    );
    return _channel.ready.then((value) {
      _connected = true;
    });
  }

  void _onError(Object error, StackTrace stackTrace) {
    error.error(stackTrace: stackTrace);
    _connected = false;
    if (_retryTimes > 0) {
      _reconnectSubscription?.cancel();
      'wait reconnect'.debug();
      _reconnectSubscription = Future.delayed(
        Duration(milliseconds: (retryTimes - _retryTimes) * 500),
      ).asStream().listen((_) {
        'reconnecting'.debug();
        connect();
      });
    } else {
      onError?.call(error, stackTrace);
    }
  }

  void _onDone() {
    '_onDone'.debug();
    disconnect();
  }

  bool send(Object data) {
    if (!_connected) {
      return false;
    }
    try {
      final raw = jsonEncode(data);
      raw.debug();
      _channel.sink.add(raw);
      return true;
    } catch (e) {
      return false;
    }
  }

  void disconnect() {
    'disconnect'.debug();
    _channel.sink.close();
    _subscription.cancel();
    _reconnectSubscription?.cancel();
    _retryTimes = retryTimes;
    _connected = false;
  }
}
