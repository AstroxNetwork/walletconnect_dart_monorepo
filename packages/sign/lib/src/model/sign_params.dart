import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_core/core.dart';

import 'namespace.dart';
import 'session_proposer.dart';
import 'session_request.dart';

part 'sign_params.freezed.dart';

part 'sign_params.g.dart';

@freezed
class SignParams with _$SignParams implements ClientParams {
  const factory SignParams.sessionPropose({
    required List<RelayProtocolOptions> relays,
    required SessionProposer proposer,
    @JsonKey(name: 'requiredNamespaces')
        required Map<String, NamespaceProposal> namespaces,
  }) = SessionProposeParams;

  const factory SignParams.approval({
    required RelayProtocolOptions relay,
    required String responderPublicKey,
  }) = ApprovalParams;

  const factory SignParams.sessionSettle({
    required RelayProtocolOptions relay,
    required SessionParticipant controller,
    required Map<String, NamespaceSession> namespaces,
    required int expiry,
  }) = SessionSettleParams;

  const factory SignParams.sessionRequest({
    required SessionRequest request,
    required String chainId,
  }) = SessionRequestParams;

  const factory SignParams.event({
    required SessionRequest request,
    required String chainId,
  }) = EventParams;

  const factory SignParams.updateNamespaces({
    required Map<String, NamespaceSession> namespaces,
  }) = UpdateNamespacesParams;

  const factory SignParams.extend({required int expiry}) = ExtendParams;

  const factory SignParams.delete({
    @Default(-1) int code,
    required String message,
  }) = DeleteParams;

  const factory SignParams.ping() = PingParams;

  factory SignParams.fromJson(Map<String, dynamic> json) =>
      _$SignParamsFromJson(json);
}
