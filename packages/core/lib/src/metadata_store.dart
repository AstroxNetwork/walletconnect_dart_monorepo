import 'dart:async';

import 'package:collection/collection.dart';
import 'package:tuple/tuple.dart';
import 'package:walletconnect_mono_core/src/model/app_meta_data.dart';

abstract class IMetadataStore {
  const IMetadataStore();

  FutureOr<void> insertOrAbort(
    String topic,
    AppMetaDataType type,
    AppMetaData appMetaData,
  );

  FutureOr<void> update(
    String topic,
    AppMetaDataType type,
    AppMetaData appMetaData,
  );

  FutureOr<void> addOrUpdate(
    String topic,
    AppMetaDataType type,
    AppMetaData appMetaData,
  ) async {
    if (await has(topic, type)) {
      await update(topic, type, appMetaData);
    } else {
      await insertOrAbort(topic, type, appMetaData);
    }
  }

  FutureOr<void> delete(String topic, [AppMetaDataType? type]);

  FutureOr<bool> has(String topic, AppMetaDataType type);

  FutureOr<List<MetadataData>> all();

  FutureOr<AppMetaData> get(String topic, AppMetaDataType type);
}

typedef MetadataData = Tuple3<String, AppMetaDataType, AppMetaData>;

extension MetadataDataExtension on MetadataData {
  String get topic => item1;

  AppMetaDataType get type => item2;

  AppMetaData get metadata => item3;
}

class MemMetadataStore extends IMetadataStore {
  late final _store = <String, Map>{};

  @override
  FutureOr<void> insertOrAbort(
    String topic,
    AppMetaDataType type,
    AppMetaData appMetaData,
  ) async {
    if (await has(topic, type)) {
      return;
    }
    final map = appMetaData.toJson();
    map['topic'] = topic;
    map['type'] = type.name;
    _store['${type.name}:$topic'] = map;
  }

  @override
  FutureOr<List<MetadataData>> all() {
    return _store.values.map<MetadataData>((e) {
      final item = e.cast<String, dynamic>();
      return Tuple3(
        item['topic'],
        AppMetaDataType.of(item['type']),
        AppMetaData.fromJson(item),
      );
    }).toList(growable: false);
  }

  @override
  FutureOr<bool> has(String topic, AppMetaDataType type) {
    return _store.containsKey('${type.name}:$topic');
  }

  @override
  FutureOr<void> update(
    String topic,
    AppMetaDataType type,
    AppMetaData appMetaData,
  ) {
    return insertOrAbort(topic, type, appMetaData);
  }

  @override
  FutureOr<void> addOrUpdate(
    String topic,
    AppMetaDataType type,
    AppMetaData appMetaData,
  ) {
    return insertOrAbort(topic, type, appMetaData);
  }

  @override
  FutureOr<void> delete(String topic, [AppMetaDataType? type]) {
    if (type != null) {
      _store.remove('${type.name}:$topic');
      return null;
    }
    final key = _store.keys.firstWhereOrNull((e) => e.split(':').last == topic);
    if (key != null) {
      _store.remove(key);
    }
  }

  @override
  FutureOr<AppMetaData> get(String topic, AppMetaDataType type) {
    final map = _store['${type.name}:$topic']!;
    return AppMetaData.fromJson(map.cast());
  }
}
