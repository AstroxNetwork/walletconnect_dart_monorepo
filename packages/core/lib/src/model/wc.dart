import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

import 'client_params.dart';

part 'wc.freezed.dart';

part 'wc.g.dart';

typedef SymmetricKey = Uint8List;

@freezed
class WalletConnectUri with _$WalletConnectUri {
  const WalletConnectUri._();

  const factory WalletConnectUri({
    required String topic,
    @Uint8ListToHexConverter() required SymmetricKey symKey,
    required RelayProtocolOptions relay,
    @Default('2') String version,
  }) = _WalletConnectUri;

  factory WalletConnectUri.fromJson(Map<String, Object?> json) =>
      _$WalletConnectUriFromJson(json);

  Uri toUri() {
    return Uri(
      scheme: 'wc',
      path: '$topic@$version',
      queryParameters: {
        'relay-protocol': relay.protocol,
        if (relay.data != null) 'relay-data': relay.data,
        'symKey': symKey.bytesToHex()
      },
    );
  }

  static WalletConnectUri? fromUri(Uri uri) {
    if (!uri.isScheme('wc')) {
      return null;
    }
    final userInfo = uri.userInfo;
    if (userInfo.isEmpty) {
      return null;
    }
    final relayProtocol = uri.queryParameters['relay-protocol'];
    if (relayProtocol == null || relayProtocol.isEmpty) {
      return null;
    }
    final symKey = uri.queryParameters['symKey'];
    if (symKey == null || symKey.isEmpty) {
      return null;
    }
    final Uint8List symKeyBytes;
    try {
      symKeyBytes = symKey.hexToBytes();
    } catch (e) {
      return null;
    }
    return WalletConnectUri(
      topic: userInfo,
      symKey: symKeyBytes,
      relay: RelayProtocolOptions(
        protocol: relayProtocol,
        data: uri.queryParameters['relay-data'],
      ),
      // TODO: Will add back later after discussion about how we want to handle registered methods
    );
  }
}

@freezed
class RelayProtocolOptions with _$RelayProtocolOptions {
  const RelayProtocolOptions._();

  const factory RelayProtocolOptions({
    @Default('irn') String protocol,
    String? data,
  }) = _RelayProtocolOptions;

  factory RelayProtocolOptions.fromJson(Map<String, Object?> json) =>
      _$RelayProtocolOptionsFromJson(json);

  String toQueryString() {
    final sb = StringBuffer('relay-protocol=');
    sb.write(protocol);
    if (data != null) {
      sb.write('&relay-data=');
      sb.write(data);
    }
    return sb.toString();
  }
}

@Freezed(genericArgumentFactories: true)
class WCRequest with _$WCRequest {
  const WCRequest._();

  const factory WCRequest({
    @TopicConverter() required String topic,
    required int id,
    required String method,
    required dynamic params,
  }) = _WCRequest;

  factory WCRequest.fromJson(Map<String, dynamic> json) =>
      _$WCRequestFromJson(json);
}
//
// @Freezed(genericArgumentFactories: true)
// class WCResponse<T extends ClientParams, R> with _$WCResponse<T, R> {
//   const WCResponse._();
//
//   const factory WCResponse({
//     @TopicConverter() required String topic,
//     required JsonRpcResponse<R> response,
//     required String method,
//     required T params,
//   }) = _WCResponse;
//
//   factory WCResponse.fromJson(
//       Map<String, dynamic> json,
//       ObjectFactory<T> factoryT,
//       ObjectFactory<R> factoryR,
//       ) =>
//       _$WCResponseFromJson(json, factoryT, factoryR);
// }

abstract class WCResponse<T extends ClientParams> {
  @TopicConverter()
  final String topic;
  final String method;
  final JsonRpcResponse response;
  final T params;

  WCResponse._(this.topic, this.method, this.response, this.params);

  factory WCResponse.fromJson(
    Map<String, dynamic> json,
    ObjectFactory<T> paramsFactory,
    ObjectFactory resultFactory,
  ) {
    final response = (json['response'] as Map).cast<String, dynamic>();
    final isError = response['error'] != null;
    return _WCResponseImpl(
      topic: json['topic'],
      response: isError
          ? JsonRpcError.fromJson(response, neverCallObjectFactory)
          : JsonRpcResult.fromJson(response, resultFactory),
      method: json['method'],
      params: paramsFactory.call((json['params'] as Map).cast()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'topic': const TopicConverter().toJson(topic),
      'response': response,
      'method': method,
      'params': params
    };
  }
}

class _WCResponseImpl<T extends ClientParams> extends WCResponse<T> {
  _WCResponseImpl({
    required String topic,
    required JsonRpcResponse response,
    required String method,
    required T params,
  }) : super._(topic, method, response, params);
}
