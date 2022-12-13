import 'package:pointycastle/src/utils.dart' as utils;
import 'package:test/test.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });
    test('First Test', () async {
      final baseUri = Uri.parse('wss://relay.walletconnect.com/');
      final relayUri = baseUri.replace(
        queryParameters: {
          'projectId': 'adc27c18edf04fb1efb8f46a7040cdcc',
          'ua': 'w-2/dart-mono-1.0.0',
          ...baseUri.queryParameters,
        },
      );
      const jwt = BaseJwtStore();
      final token = await jwt.generateJWT(relayUri.toString(), (clientId) {
        clientId.debug();
      });
      final finalUri = relayUri.replace(
        queryParameters: {
          'auth': token,
          ...relayUri.queryParameters,
        },
      );
      finalUri.debug();
      final client = BaseRelayClient(finalUri);
      await client.ready;
      client.publish(
        randomBytes(32).bytesToHex(),
        'testMessage',
        const IrnParams(tag: 1114, ttl: Duration(seconds: 300)),
      );
      await Future.delayed(const Duration(days: 1));
    });
  });
}
