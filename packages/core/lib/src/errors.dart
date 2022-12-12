import 'package:walletconnect_mono_foundation/foundation.dart';

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