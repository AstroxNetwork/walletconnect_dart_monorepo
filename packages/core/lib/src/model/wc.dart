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

  static WalletConnectUri? fromUri(String uriString) {
    final uri = Uri.tryParse(uriString);
    if (uri == null) {
      return null;
    }
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

abstract class WCRequest<T extends ClientParams> {
  @TopicConverter()
  final String topic;
  final int id;
  final String method;
  final T params;

  WCRequest._(this.topic, this.id, this.method, this.params);

  factory WCRequest.fromJson(
    Map<String, dynamic> json,
    ObjectFactory<T> factory,
  ) {
    return _WCRequestImpl(
      topic: json['topic'],
      id: json['id'],
      method: json['method'],
      params: factory.call((json['params'] as Map).cast()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'topic': const TopicConverter().toJson(topic),
      'id': id,
      'method': method,
      'params': params
    };
  }
}

class _WCRequestImpl<T extends ClientParams> extends WCRequest<T> {
  _WCRequestImpl({
    required String topic,
    required int id,
    required String method,
    required T params,
  }) : super._(topic, id, method, params);
}

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
    ObjectFactory<JsonRpcResult> responseFactory,
  ) {
    final response = (json['response'] as Map).cast<String, dynamic>();
    final isError = response['error'] != null;
    return _WCResponseImpl(
      topic: json['topic'],
      response: isError
          ? JsonRpcError.fromJson(response)
          : responseFactory.call(response),
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
