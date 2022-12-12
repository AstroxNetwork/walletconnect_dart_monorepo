import 'dart:typed_data';

import 'package:walletconnect_mono_auth/src/signature/eip191.dart';
import 'package:walletconnect_mono_auth/src/signature/signature.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

import '../model/cacao.dart';

enum CacaoType {
  EIP4361('eip4361'),
  ;

  const CacaoType(this.header);

  final String header;

  CacaoHeader toHeader() => CacaoHeader(header);
}

class CacaoSigner {
  const CacaoSigner._();

  static CacaoSignature signMessageBytes(
    Uint8List message,
    Uint8List privateKey,
    SignatureType type,
  ) {
    switch (type) {
      case SignatureType.EIP191:
      case SignatureType.EIP1271:
        return CacaoSignature(
          t: type.header,
          s: EIP191Signer.signBytes(message, privateKey).toCacaoSignature(),
        );
    }
  }

  static CacaoSignature signMessage(
    String message,
    Uint8List privateKey,
    SignatureType type,
  ) {
    return signMessageBytes(message.toBytes(), privateKey, type);
  }
}
