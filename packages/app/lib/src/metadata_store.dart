import 'dart:async';

import 'package:collection/collection.dart';
import 'package:hive/hive.dart';
import 'package:tuple/tuple.dart';
import 'package:walletconnect_mono_core/core.dart';

class HiveMetadataStore extends IMetadataStore {
  final Box<Map> box;

  const HiveMetadataStore(this.box);

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
    return box.put('${type.name}:$topic', map);
  }

  @override
  FutureOr<List<MetadataData>> all() {
    return box.values.map<MetadataData>((e) {
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
    return box.containsKey('${type.name}:$topic');
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
      return box.delete('${type.name}:$topic');
    }
    final key = box.keys.firstOrNull((e) => e.toString().split(':').last);
    if (key != null) {
      return box.delete(key);
    }
  }

  @override
  FutureOr<AppMetaData> get(String topic, AppMetaDataType type) {
    final map = box.get('${type.name}:$topic')!;
    return AppMetaData.fromJson(map.cast());
  }
}
