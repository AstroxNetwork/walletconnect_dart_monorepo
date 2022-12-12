class WalletConnectError {
  const WalletConnectError(this.code, this.message);

  final int code;
  final String message;

  factory WalletConnectError.get(WalletConnectError key, [Object? context]) {
    return WalletConnectError(
      key.code,
      context != null ? '${key.message} $context' : key.message,
    );
  }
}

enum SdkErrors implements WalletConnectError {
  invalidMethod(
    message: 'Invalid method.',
    code: 1001,
  ),
  invalidEvent(
    message: 'Invalid event.',
    code: 1002,
  ),
  invalidUpdateRequest(
    message: 'Invalid update request.',
    code: 1003,
  ),
  invalidExtendRequest(
    message: 'Invalid extend request.',
    code: 1004,
  ),
  invalidSessionSettleRequest(
    message: 'Invalid session settle request.',
    code: 1005,
  ),
  /* ----- UNAUTHORIZED (3xxx) ----- */
  unauthorizedMethod(
    message: 'Unauthorized method.',
    code: 3001,
  ),
  unauthorizedEvent(
    message: 'Unauthorized event.',
    code: 3002,
  ),
  unauthorizedUpdateRequest(
    message: 'Unauthorized update request.',
    code: 3003,
  ),
  unauthorizedExtendRequest(
    message: 'Unauthorized extend request.',
    code: 3004,
  ),
  /* ----- REJECTED (5xxx) ----- */
  userRejected(
    message: 'User rejected.',
    code: 5000,
  ),
  userRejectedChains(
    message: 'User rejected chains.',
    code: 5001,
  ),
  userRejectedMethods(
    message: 'User rejected methods.',
    code: 5002,
  ),
  userRejectedEvents(
    message: 'User rejected events.',
    code: 5003,
  ),
  unsupportedChains(
    message: 'Unsupported chains.',
    code: 5100,
  ),
  unsupportedMethods(
    message: 'Unsupported methods.',
    code: 5101,
  ),
  unsupportedEvents(
    message: 'Unsupported events.',
    code: 5102,
  ),
  unsupportedAccounts(
    message: 'Unsupported accounts.',
    code: 5103,
  ),
  unsupportedNamespaceKey(
    message: 'Unsupported namespace key.',
    code: 5104,
  ),
  /* ----- REASON (6xxx) ----- */
  userDisconnected(
    message: 'User disconnected.',
    code: 6000,
  ),
  /* ----- FAILURE (7xxx) ----- */
  sessionSettlementFailed(
    message: 'Session settlement failed.',
    code: 7000,
  ),
  ;

  const SdkErrors({required this.code, required this.message});

  @override
  final int code;
  @override
  final String message;
}

enum InternalErrors implements WalletConnectError {
  notInitialized(
    message: 'Not initialized.',
    code: 1,
  ),
  noMatchingKey(
    message: 'No matching key.',
    code: 2,
  ),
  restoreWillOverride(
    message: 'Restore will override.',
    code: 3,
  ),
  resubscribed(
    message: 'Resubscribed.',
    code: 4,
  ),
  missingOrInvalid(
    message: 'Missing or invalid.',
    code: 5,
  ),
  expired(
    message: 'Expired.',
    code: 6,
  ),
  unknownType(
    message: 'Unknown type.',
    code: 7,
  ),
  mismatchedTopic(
    message: 'Mismatched topic.',
    code: 8,
  ),
  nonConformingNamespaces(
    message: 'Non conforming namespaces.',
    code: 9,
  ),
  ;

  const InternalErrors({required this.code, required this.message});

  @override
  final int code;
  @override
  final String message;
}

extension WalletConnectErrorExtension on WalletConnectError {
  void throws([Object? context]) {
    throw StateError(context != null ? '$message $context' : message);
  }
}
