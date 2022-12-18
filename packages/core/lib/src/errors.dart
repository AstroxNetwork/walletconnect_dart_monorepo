import 'package:walletconnect_mono_foundation/foundation.dart';

class CoreErrorMessages {
  const CoreErrorMessages._();

  static const MALFORMED_PAIRING_URI_MESSAGE = 'Pairing URI string is invalid.';

  static const PAIRING_NOW_ALLOWED_MESSAGE =
      'Pair with existing pairing is not allowed';

  static const NO_SEQUENCE_FOR_TOPIC_MESSAGE =
      'Cannot find sequence for given topic: ';
}

class UnknownEnvelopeTypeError extends WalletConnectError {
  UnknownEnvelopeTypeError([super.message]);
}

class MissingParticipantsError extends WalletConnectError {
  MissingParticipantsError([super.message]);
}

class MissingKeyError extends WalletConnectError {
  MissingKeyError([super.message]);
}

class MissingPairingError extends WalletConnectError {
  MissingPairingError([super.message]);
}

class GenericError extends WalletConnectError {
  GenericError([super.message]);
}

class MalformedWalletConnectUriError extends WalletConnectError {
  MalformedWalletConnectUriError([super.message]);
}

class PairWithExistingPairingIsNotAllowedError extends WalletConnectError {
  PairWithExistingPairingIsNotAllowedError([super.message]);
}

class CannotFindSequenceForTopicError extends WalletConnectError {
  CannotFindSequenceForTopicError([super.message]);
}

class InvalidProjectIdError extends WalletConnectError {
  InvalidProjectIdError([super.message]);
}

class ProjectIdDoesNotExistError extends WalletConnectError {
  ProjectIdDoesNotExistError([super.message]);
}

class CannotFindKeyPairError extends WalletConnectError {
  CannotFindKeyPairError([super.message]);
}

class Uncategorized extends RemoteJsonRpcError {
  Uncategorized._(super.code, super.message);

  factory Uncategorized.noMatchingTopic(String sequence, String topic) =>
      Uncategorized._(1301, 'No matching $sequence with topic: $topic');

  factory Uncategorized.generic(String error) =>
      Uncategorized._(1302, 'Generic error: $error');
}

class Reason extends RemoteJsonRpcError {
  Reason._(super.code, super.message);

  factory Reason.userDisconnected() => Reason._(6000, 'User disconnected');
}
