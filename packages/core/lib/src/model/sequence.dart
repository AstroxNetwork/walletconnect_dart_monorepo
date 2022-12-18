import 'package:walletconnect_mono_foundation/foundation.dart';

abstract class Sequence {
  @TopicConverter()
  final String topic;
  @ExpiryConverter()
  final Duration expiry;

  Sequence(this.topic, this.expiry);
}
