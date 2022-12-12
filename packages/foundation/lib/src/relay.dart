import 'dart:async';

import 'package:stack_trace/stack_trace.dart';
import 'package:walletconnect_mono_foundation/src/model/client_event.dart';

import 'connection.dart';
import 'errors.dart';
import 'event_bus.dart';
import 'log.dart';
import 'model/irn.dart';
import 'model/pending_request.dart';
import 'model/relay.dart';
import 'model/rpc.dart';
import 'snippets.dart';

abstract class IRelay {
  Future<RelayPublishResult> publish(
    String topic,
    String message,
    IrnParams params, {
    Duration? timeout,
  });

  Future<RelaySubscribeResult> subscribe(
    String topic, {
    Duration? timeout,
  });

  Future<RelayUnsubscribeResult> unsubscribe(
    String topic,
    String subscriptionId, {
    Duration? timeout,
  });

  void on(OnData<ClientEvent> onEvent);
}

abstract class IRelayConnection implements IRelay {
  FutureOr<bool> isAvailable();

  FutureOr<void> connect();

  FutureOr<void> disconnect();
}

class BaseRelayClient implements IRelay, IRelayConnection {
  static late final pendingRequest = <int, PendingRequest>{};

  final Uri relayUri;

  late final SocketClient _client;

  Future<void> get ready => _client.ready;

  BaseRelayClient(this.relayUri) {
    _client = SocketClient(
      retryTimes: 5,
      uri: relayUri,
      onData: (data) {
        _bus.fire(ClientEvent.data(data));
      },
      onError: (e, [s]) {
        e.error(stackTrace: s);
        _bus.fire(ClientEvent.error(e, s!));
      },
    );
  }

  late final _bus = EventBus.async();

  @override
  Future<RelayPublishResult> publish(
    String topic,
    String message,
    IrnParams params, {
    Duration? timeout,
  }) async {
    await checkAvailable();
    final publish = RelayPublishRequestParams(
      topic: topic,
      message: message,
      ttl: params.ttl,
      tag: params.tag,
      prompt: params.prompt,
    );
    final request = RelayPublishRequest(id: generateId(), params: publish);
    return _send(request, timeout);
  }

  @override
  Future<RelaySubscribeResult> subscribe(
    String topic, {
    Duration? timeout,
  }) async {
    await checkAvailable();
    final request = RelaySubscribeRequest(
      id: generateId(),
      params: RelaySubscribeRequestParams(topic: topic),
    );
    return _send(request, timeout);
  }

  @override
  Future<RelayUnsubscribeResult> unsubscribe(
    String topic,
    String subscriptionId, {
    Duration? timeout,
  }) async {
    await checkAvailable();
    final request = RelayUnsubscribeRequest(
      id: generateId(),
      params: RelayUnsubscribeRequestParams(
        topic: topic,
        subscriptionId: subscriptionId,
      ),
    );
    return _send(request, timeout);
  }

  Future<T> _send<T extends JsonRpcResponse>(
    JsonRpcRequest request,
    Duration? timeout,
  ) {
    final completer = Completer<T>();
    if (_client.send(request)) {
      pendingRequest[request.id] = PendingRequest(
        request,
        completer,
        Chain.current(),
      );
    } else {
      completer.completeError(MessageSendingError());
    }
    if (timeout == null) {
      return completer.future;
    }
    return completer.future.timeout(timeout);
  }

  FutureOr<void> checkAvailable() async {
    final ok = await isAvailable();
    if (!ok) {
      throw NoRelayConnectionError('No connection available');
    }
  }

  @override
  FutureOr<void> connect() {
    return _client.connect();
  }

  @override
  FutureOr<void> disconnect() {
    _client.disconnect();
  }

  @override
  FutureOr<bool> isAvailable() {
    return _client.connected;
  }

  @override
  void on(OnData<ClientEvent> onEvent) {
    _bus.on<ClientEvent>().listen(onEvent);
  }
}
