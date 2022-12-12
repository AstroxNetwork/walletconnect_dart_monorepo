import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_rpc_record.freezed.dart';

part 'json_rpc_record.g.dart';

@freezed
class JsonRpcRecord with _$JsonRpcRecord {
  const factory JsonRpcRecord({
    required int id,
    required String topic,
    required String method,
    required String body,
    String? response,
  }) = _JsonRpcRecord;

  factory JsonRpcRecord.fromJson(Map<String, dynamic> json) =>
      _$JsonRpcRecordFromJson(json);
}
