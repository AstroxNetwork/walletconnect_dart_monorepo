import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';

part 'pending_request.freezed.dart';

@freezed
class PendingRequest with _$PendingRequest {
  const factory PendingRequest(
    JsonRpcRequest request,
    Completer<JsonRpcResponse> completer,
    Chain chain,
  ) = _PendingRequest;
}
