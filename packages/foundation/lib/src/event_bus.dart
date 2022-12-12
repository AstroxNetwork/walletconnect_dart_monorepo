import 'dart:async';

class EventBus {
  final StreamController _controller;

  StreamController get controller => _controller;

  EventBus({bool sync = false})
      : _controller = StreamController.broadcast(sync: sync);

  factory EventBus.async() => EventBus();

  factory EventBus.sync() => EventBus(sync: true);

  EventBus.custom(StreamController controller) : _controller = controller;

  Stream<T> on<T>() {
    if (T == dynamic) {
      return _controller.stream as Stream<T>;
    } else {
      return _controller.stream.where((event) => event is T).cast<T>();
    }
  }

  void fire(Object? event) {
    _controller.add(event);
  }

  void destroy() {
    _controller.close();
  }
}
