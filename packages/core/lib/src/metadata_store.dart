import 'dart:async';

import 'package:tuple/tuple.dart';
import 'package:walletconnect_mono_core/src/model/app_meta_data.dart';

abstract class IMetadataStore {
  const IMetadataStore();

  FutureOr<void> add(
    String topic,
    AppMetaDataType type,
    AppMetaData AppMetaData,
  );

  FutureOr<void> update(
    String topic,
    AppMetaDataType type,
    AppMetaData AppMetaData,
  );

  FutureOr<void> addOrUpdate(
    String topic,
    AppMetaDataType type,
    AppMetaData AppMetaData,
  ) async {
    if (await has(topic, type)) {
      await update(topic, type, AppMetaData);
    } else {
      await add(topic, type, AppMetaData);
    }
  }

  FutureOr<void> delete(String topic, [AppMetaDataType? type]);

  FutureOr<bool> has(String topic, AppMetaDataType type);

  FutureOr<List<MetadataData>> all();
}

typedef MetadataData = Tuple3<String, AppMetaDataType, AppMetaData>;

extension MetadataDataExtension on MetadataData {
  String get topic => item1;

  AppMetaDataType get type => item2;

  AppMetaData get metadata => item3;
}
