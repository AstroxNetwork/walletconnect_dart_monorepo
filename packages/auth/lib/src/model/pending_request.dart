import 'package:freezed_annotation/freezed_annotation.dart';

import 'payload_params.dart';

part 'pending_request.freezed.dart';
part 'pending_request.g.dart';

@freezed
class PendingRequest with _$PendingRequest {
  const factory PendingRequest({
    required int id,
    required PayloadParams payloadParams,
    required String message,
  }) = _PendingRequest;

  factory PendingRequest.fromJson(Map<String, Object?> json) =>
      _$PendingRequestFromJson(json);
}
