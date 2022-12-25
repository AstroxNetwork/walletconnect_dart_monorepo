import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_core/core.dart';
import 'package:walletconnect_mono_foundation/foundation.dart';
import 'package:walletconnect_mono_sign/src/model/session_proposer.dart';
import 'package:walletconnect_mono_sign/src/model/sign_params.dart';

import 'namespace.dart';

part 'session.freezed.dart';

part 'session.g.dart';

@freezed
class Session with _$Session implements Sequence {
  const Session._();

  const factory Session({
    @TopicConverter() required String topic,
    @ExpiryConverter() required Duration expiry,
    required String relayProtocol,
    String? relayData,
    @Uint8ListToHexConverter() PublicKey? controllerKey,
    @Uint8ListToHexConverter() required PublicKey selfPublicKey,
    AppMetaData? selfAppMetaData,
    @Uint8ListToHexConverter() PublicKey? peerPublicKey,
    AppMetaData? peerAppMetaData,
    required Map<String, NamespaceSession> namespaces,
    required Map<String, NamespaceProposal> proposalNamespaces,
    required bool isAcknowledged,
  }) = _Session;

  factory Session.unacknowledged({
    required String sessionTopic,
    required SessionProposeParams proposal,
    required SessionParticipant selfParticipant,
    required Duration expiry,
    required Map<String, NamespaceSession> namespaces,
  }) {
    return Session(
      topic: sessionTopic,
      expiry: expiry,
      relayProtocol: proposal.relays.first.protocol,
      relayData: proposal.relays.first.data,
      peerPublicKey: proposal.proposer.publicKey,
      peerAppMetaData: proposal.proposer.metadata,
      selfPublicKey: selfParticipant.publicKey,
      selfAppMetaData: selfParticipant.metadata,
      controllerKey: selfParticipant.publicKey,
      namespaces: namespaces,
      proposalNamespaces: proposal.namespaces,
      isAcknowledged: false,
    );
  }

  factory Session.acknowledged({
    required String sessionTopic,
    required SessionSettleParams settleParams,
    required PublicKey selfPublicKey,
    required AppMetaData selfMetadata,
    required Map<String, NamespaceProposal> proposalNamespaces,
  }) {
    return Session(
      topic: sessionTopic,
      expiry: Duration(seconds: settleParams.expiry),
      relayProtocol: settleParams.relay.protocol,
      relayData: settleParams.relay.data,
      peerPublicKey: settleParams.controller.publicKey,
      peerAppMetaData: settleParams.controller.metadata,
      selfPublicKey: selfPublicKey,
      selfAppMetaData: selfMetadata,
      controllerKey: settleParams.controller.publicKey,
      namespaces: settleParams.namespaces,
      proposalNamespaces: proposalNamespaces,
      isAcknowledged: true,
    );
  }

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

extension SessionExtension on Session {
  bool get isPeerController =>
      const ListEquality().equals(peerPublicKey, controllerKey);

  bool get isSelfController =>
      const ListEquality().equals(selfPublicKey, controllerKey);
}
