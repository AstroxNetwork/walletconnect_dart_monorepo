import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

part 'pending_request.freezed.dart';

part 'pending_request.g.dart';

@freezed
class PendingRequest with _$PendingRequest {
  const factory PendingRequest({
    required int id,
    required String method,
    @TopicConverter() required String topic,
    required String params,
  }) = _PendingRequest;

  factory PendingRequest.fromJson(Map<String, dynamic> json) =>
      _$PendingRequestFromJson(json);
}
