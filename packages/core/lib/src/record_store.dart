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
