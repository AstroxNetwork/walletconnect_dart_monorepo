import 'package:freezed_annotation/freezed_annotation.dart';

part 'cacao.freezed.dart';

part 'cacao.g.dart';

@freezed
class Cacao with _$Cacao {
  const factory Cacao({
    required CacaoHeader header,
    required CacaoPayload payload,
    required CacaoSignature signature,
  }) = _Cacao;

  factory Cacao.fromJson(Map<String, dynamic> json) => _$CacaoFromJson(json);
}

@freezed
class CacaoSignature with _$CacaoSignature {
  const factory CacaoSignature({
    required String t,
    required String s,
    String? m,
  }) = _CacaoSignature;

  factory CacaoSignature.fromJson(Map<String, dynamic> json) =>
      _$CacaoSignatureFromJson(json);
}

@freezed
class CacaoHeader with _$CacaoHeader {
  const factory CacaoHeader(String t) = _CacaoHeader;

  factory CacaoHeader.fromJson(Map<String, dynamic> json) =>
      _$CacaoHeaderFromJson(json);
}

@freezed
class CacaoPayload with _$CacaoPayload {
  const factory CacaoPayload({
    required String iss,
    required String domain,
    required String aud,
    required String version,
    required String nonce,
    required String iat,
    String? nbf,
    String? exp,
    String? statement,
    String? requestId,
    List<String>? resources,
  }) = _CacaoPayload;

  factory CacaoPayload.fromJson(Map<String, dynamic> json) =>
      _$CacaoPayloadFromJson(json);

  static const issDelimiter = ':';
  static const issPositionOfChainId = 3;
  static const issPositionOfAddress = 4;

  String address() => iss.split(issDelimiter)[issPositionOfAddress];

  String chainId() => iss.split(issDelimiter)[issPositionOfChainId];
}
