import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:walletconnect_mono_core/core.dart';

import 'key_store.dart';
import 'metadata_store.dart';
import 'pairing_store.dart';
import 'record_store.dart';

class HiveStoreProvider extends IStoreProvider {
  HiveStoreProvider._({
    required super.keyStore,
    required super.metadataStore,
    required super.pairingStore,
    required super.jsonRpcRecordStore,
  });

  static const _defaultStoreKeyPrefix = 'walletconnect_';

  factory HiveStoreProvider({
    required HiveKeyStore keyStore,
    required HiveMetadataStore metadataStore,
    required HivePairingStore pairingStore,
    required HiveJsonRpcRecordStore jsonRpcRecordStore,
  }) {
    return HiveStoreProvider._(
      keyStore: keyStore,
      metadataStore: metadataStore,
      pairingStore: pairingStore,
      jsonRpcRecordStore: jsonRpcRecordStore,
    );
  }

  static Future<HiveStoreProvider> createAsync({
    String keyPrefix = _defaultStoreKeyPrefix,
    HiveCipher? encryptionCipher,
  }) async {
    // default key: walletconnect__keystore
    final box1 = await Hive.openBox<Uint8List>(
      '${keyPrefix}_keystore',
      encryptionCipher: encryptionCipher,
    );
    // default key: walletconnect__metadata
    final box2 = await Hive.openBox<Map>(
      '${keyPrefix}_metadata',
      encryptionCipher: encryptionCipher,
    );
    // default key: walletconnect__pairing
    final box3 = await Hive.openBox<Map>(
      '${keyPrefix}_pairing',
      encryptionCipher: encryptionCipher,
    );

    // default key: walletconnect__record
    final box4 = await Hive.openBox<Map>(
      '${keyPrefix}_record',
      encryptionCipher: encryptionCipher,
    );
    return HiveStoreProvider._(
      keyStore: HiveKeyStore(box1),
      metadataStore: HiveMetadataStore(box2),
      pairingStore: HivePairingStore(box3),
      jsonRpcRecordStore: HiveJsonRpcRecordStore(box4),
    );
  }
}
