import 'dart:async';

import 'package:hive/hive.dart';
import 'package:walletconnect_mono_core/core.dart';

class HiveJsonRpcRecordStore extends IJsonRpcRecordStore {
  final Box<Map> box;

  const HiveJsonRpcRecordStore(this.box);

  @override
  FutureOr<void> add(JsonRpcRecord record) async {
    if (await has(record.id)) {
      throw StateError('Duplicated JsonRpc record: $record');
    }
    return box.put(record.id.toString(), record.toJson());
  }

  @override
  FutureOr<void> delete(int id) {
    return box.delete(id.toString());
  }

  @override
  FutureOr<void> deleteByTopic(String topic) {
    final keys = box.values
        .where((e) => e['topic'] == topic)
        .map((e) => e['id'].toString());
    return box.deleteAll(keys);
  }

  @override
  FutureOr<JsonRpcRecord?> get(int id) {
    final map = box.get(id.toString());
    if (map == null) {
      return null;
    }
    return JsonRpcRecord.fromJson(map.cast<String, dynamic>());
  }

  @override
  FutureOr<bool> has(int id) {
    return box.containsKey(id.toString());
  }

  @override
  FutureOr<List<JsonRpcRecord>> listPending() {
    return box.values
        .where((e) => e['response'] == null)
        .map((e) => JsonRpcRecord.fromJson(e.cast<String, dynamic>()))
        .toList(growable: false);
  }

  @override
  FutureOr<List<JsonRpcRecord>> listPendingByTopic(String topic) {
    return box.values
        .where((e) => e['response'] == null && e['topic'] == topic)
        .map((e) => JsonRpcRecord.fromJson(e.cast<String, dynamic>()))
        .toList(growable: false);
  }

  @override
  FutureOr<void> update(int id, String response) async {
    final record = await get(id);
    if (record == null) {
      throw StateError('JsonRpc record not found: $record');
    }
    return box.put(
      record.id.toString(),
      record.copyWith(response: response).toJson(),
    );
  }
}
