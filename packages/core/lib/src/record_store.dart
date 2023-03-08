import 'dart:async';

import 'package:walletconnect_mono_core/src/model/json_rpc_record.dart';

abstract class IJsonRpcRecordStore {
  const IJsonRpcRecordStore();

  FutureOr<void> add(JsonRpcRecord record);

  FutureOr<void> update(int id, String response);

  FutureOr<bool> has(int id);

  FutureOr<JsonRpcRecord?> get(int id);

  FutureOr<void> delete(int id);

  FutureOr<void> deleteByTopic(String topic);

  FutureOr<List<JsonRpcRecord>> listPending();

  FutureOr<List<JsonRpcRecord>> listPendingByTopic(String topic);
}

class MemJsonRpcRecordStore extends IJsonRpcRecordStore {
  late final _store = <String, Map>{};

  @override
  FutureOr<void> add(JsonRpcRecord record) async {
    if (await has(record.id)) {
      throw StateError('Duplicated JsonRpc record: $record');
    }
    _store[record.id.toString()] = record.toJson();
  }

  @override
  FutureOr<void> delete(int id) {
    _store.remove(id.toString());
  }

  @override
  FutureOr<void> deleteByTopic(String topic) {
    _store.removeWhere((key, value) => value['topic'] == topic);
  }

  @override
  FutureOr<JsonRpcRecord?> get(int id) {
    final map = _store[id.toString()];
    if (map == null) {
      return null;
    }
    return JsonRpcRecord.fromJson(map.cast<String, dynamic>());
  }

  @override
  FutureOr<bool> has(int id) {
    return _store.containsKey(id.toString());
  }

  @override
  FutureOr<List<JsonRpcRecord>> listPending() {
    return _store.values
        .where((e) => e['response'] == null)
        .map((e) => JsonRpcRecord.fromJson(e.cast<String, dynamic>()))
        .toList(growable: false);
  }

  @override
  FutureOr<List<JsonRpcRecord>> listPendingByTopic(String topic) {
    return _store.values
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
    _store[record.id.toString()] = record.copyWith(response: response).toJson();
  }
}
