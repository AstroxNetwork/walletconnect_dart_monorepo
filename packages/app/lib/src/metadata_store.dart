import 'dart:async';

import 'package:hive/hive.dart';
import 'package:tuple/tuple.dart';
import 'package:walletconnect_mono_core/core.dart';

class HiveMetadataStore extends IMetadataStore {
  final Box<Map> box;

  const HiveMetadataStore(this.box);

  @override
  FutureOr<void> add(
    String topic,
    AppMetaDataType type,
    AppMetaData AppMetaData,
  ) {
    final map = AppMetaData.toJson();
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
  FutureOr<void> delete(String topic, AppMetaDataType type) {
    return box.delete('${type.name}:$topic');
  }

  @override
  FutureOr<void> update(
    String topic,
    AppMetaDataType type,
    AppMetaData AppMetaData,
  ) {
    return add(topic, type, AppMetaData);
  }

  @override
  FutureOr<void> addOrUpdate(
    String topic,
    AppMetaDataType type,
    AppMetaData AppMetaData,
  ) {
    return add(topic, type, AppMetaData);
  }
}
