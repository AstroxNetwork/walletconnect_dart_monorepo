import 'package:walletconnect_mono_core/core.dart';

abstract class IStoreProvider {
  final IKeyStore keyStore;
  final IMetadataStore metadataStore;
  final IPairingStore pairingStore;
  final IJsonRpcRecordStore jsonRpcRecordStore;

  IStoreProvider({
    required this.keyStore,
    required this.metadataStore,
    required this.pairingStore,
    required this.jsonRpcRecordStore,
  });
}
