import 'package:walletconnect_mono_foundation/foundation.dart';

class UnauthorizedPeerError extends WalletConnectError {
  UnauthorizedPeerError([super.message]);
}

class NotSettledSessionException extends WalletConnectError {
  NotSettledSessionException([super.message]);
}

class PeerError extends RemoteJsonRpcError {
  PeerError._(super.code, super.message);
}

class InvalidError extends PeerError {
  InvalidError.method(String reason)
      : super._(1001, 'Invalid session request: $reason');

  InvalidError.event(String reason)
      : super._(1002, 'Invalid event request: $reason');

  InvalidError.updateRequest(String reason)
      : super._(1003, 'Invalid update namespace request: $reason');

  InvalidError.extendRequest(String reason)
      : super._(1004, 'Invalid session extend request: $reason');

  InvalidError.sessionSettleRequest(String message) : super._(1005, message);
}

class UnauthorizedError extends PeerError {
  UnauthorizedError.method(String reason)
      : super._(3001, 'Unauthorized session request: $reason');

  UnauthorizedError.event(String reason)
      : super._(3002, 'Unauthorized event request: $reason');

  UnauthorizedError.updateRequest(String sequence)
      : super._(3003, 'Unauthorized update $sequence namespace request');

  UnauthorizedError.extendRequest(String sequence)
      : super._(3004, 'Unauthorized $sequence extend request');

  UnauthorizedError.chain(String message) : super._(3005, message);
}

class EIP1193Error extends PeerError {
  EIP1193Error.userRejectedRequest(String message) : super._(4001, message);
}

class CAIP25Error extends PeerError {
  CAIP25Error.userRejected(String message) : super._(5000, message);

  CAIP25Error.userRejectedChains(String message) : super._(5001, message);

  CAIP25Error.userRejectedMethods(String message) : super._(5002, message);

  CAIP25Error.userRejectedEvents(String message) : super._(5003, message);

  CAIP25Error.unsupportedChains(String message) : super._(5100, message);

  CAIP25Error.unsupportedMethods(String message) : super._(5101, message);

  CAIP25Error.unsupportedEvents(String message) : super._(5102, message);

  CAIP25Error.unsupportedAccounts(String message) : super._(5103, message);

  CAIP25Error.unsupportedNamespaceKey(String message) : super._(5104, message);
}

class FailureError extends PeerError {
  FailureError.sessionSettlementFailed(String reason)
      : super._(7000, 'Invalid Session Settle Request: $reason');

  FailureError.noSessionForTopic(String message) : super._(7001, message);
}

class CannotFindSessionProposalError extends WalletConnectError {
  CannotFindSessionProposalError([super.message]);
}

class SignErrorMessages {
  const SignErrorMessages._();

  static const NO_SEQUENCE_FOR_TOPIC_MESSAGE =
      'Cannot find sequence for given topic: ';
  static const UNAUTHORIZED_UPDATE_MESSAGE =
      'The update() was called by the unauthorized peer. Must be called by controller client.';
  static const UNAUTHORIZED_EXTEND_MESSAGE =
      'The extend() was called by the unauthorized peer. Must be called by controller client.';
  static const UNAUTHORIZED_EMIT_MESSAGE =
      'The emit() was called by the unauthorized peer. Must be called by controller client.';
  static const SESSION_IS_NOT_ACKNOWLEDGED_MESSAGE =
      'Session is not acknowledged, topic: ';
  static const NAMESPACE_CHAINS_MISSING_MESSAGE = 'Chains must not be empty';
  static const NAMESPACE_CHAINS_CAIP_2_MESSAGE =
      'Chains must be CAIP-2 compliant';
  static const NAMESPACE_CHAINS_WRONG_NAMESPACE_MESSAGE =
      'Chains must be defined in matching namespace';
  static const NAMESPACE_EXTENSION_CHAINS_MISSING_MESSAGE =
      'Extension chains must not be empty';
  static const NAMESPACE_KEYS_CAIP_2_MESSAGE =
      'Namespace formatting must match CAIP-2';
  static const NAMESPACE_MISSING_PROPOSAL_MESSAGE =
      'No proposal for Session Namespace';
  static const NAMESPACE_ACCOUNTS_MISSING_MESSAGE =
      'Accounts must not be empty';
  static const NAMESPACE_ACCOUNTS_CAIP_10_MESSAGE =
      'Accounts must be CAIP-10 compliant';
  static const NAMESPACE_METHODS_MISSING_MESSAGE =
      'All methods must be approved';
  static const NAMESPACE_EVENTS_MISSING_MESSAGE = 'All events must be approved';
  static const NAMESPACE_ACCOUNTS_MISSING_FOR_CHAINS_MESSAGE =
      'All chains must have at least one account';
  static const NAMESPACE_ACCOUNTS_WRONG_NAMESPACE_MESSAGE =
      'Accounts must be defined in matching namespace';
  static const NAMESPACE_EXTENSION_ACCOUNTS_MISSING_MESSAGE =
      'Extension accounts must not be empty';
  static const NAMESPACE_KEYS_MISSING_MESSAGE =
      'All namespaces must be approved';
  static const UNAUTHORIZED_METHOD_MESSAGE =
      'Unauthorized method is not authorized for given chain';
  static const UNAUTHORIZED_EVENT_MESSAGE =
      'Unauthorized event is not authorized for given chain';
  static const INVALID_EVENT_MESSAGE =
      'Event name and data fields cannot be empty. ChainId must be CAIP-2 compliant';
  static const INVALID_REQUEST_MESSAGE =
      'Request topic, method and params fields cannot be empty. ChainId must be CAIP-2 compliant';
  static const INVALID_EXTEND_TIME = 'Extend time is out of range';
  static const NO_SESSION_PROPOSAL =
      'No session proposal for proposer publicKey: ';
}
