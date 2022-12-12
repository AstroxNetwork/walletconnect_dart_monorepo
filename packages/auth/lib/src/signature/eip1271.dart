import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:walletconnect_mono_auth/src/signature/sign.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

class EIP1271Verifier {
  EIP1271Verifier._();

  static const isValidSignatureHash = '0x1626ba7e';
  static const method = 'eth_call';
  static const dynamicTypeOffset =
      '0000000000000000000000000000000000000000000000000000000000000040';
  static const dynamicTypeLength =
      '0000000000000000000000000000000000000000000000000000000000000041';
  static const mediaTypeString = 'application/json; charset=utf-8';
  static const rpcUrlPrefix =
      'https://rpc.walletconnect.com/v1/?chainId=eip155:1&projectId=';
  static const hexPrefix = '0x';

  static String _validResponse(int id) =>
      '{"jsonrpc":"2.0","id":$id,"result":"0x1626ba7e00000000000000000000000000000000000000000000000000000000"}';

  static Future<bool> verify(
    SignatureData signature,
    String originalMessage,
    String address,
    String projectId,
  ) async {
    try {
      final messageHash =
          Sign.getEthereumMessageHash(originalMessage.toBytes()).bytesToHex();
      final data = isValidSignatureHash +
          messageHash +
          dynamicTypeOffset +
          dynamicTypeLength +
          signature.toCacaoSignature().removePrefixIfExist();
      final id = generateId();
      final client = RetryClient(http.Client());
      final http.Response response;
      try {
        response = await client.post(
          Uri.parse(rpcUrlPrefix + projectId),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
          },
          body: jsonEncode({
            'id': id,
            'jsonrpc': '2.0',
            'method': method,
            'params': [
              {
                'to': address,
                'data': data,
              },
              'latest',
            ],
          }),
        );
      } finally {
        client.close();
      }
      return response.body == _validResponse(id);
    } catch (e, s) {
      e.error(stackTrace: s);
      return false;
    }
  }
}
