import 'package:freezed_annotation/freezed_annotation.dart';

part 'namespace.freezed.dart';

part 'namespace.g.dart';

@freezed
class Namespace with _$Namespace {
  const factory Namespace.proposal({
    required List<String> chains,
    required List<String> methods,
    required List<String> events,
    List<NamespaceProposalExtension>? extensions,
  }) = NamespaceProposal;

  const factory Namespace.session({
    required List<String> accounts,
    required List<String> methods,
    required List<String> events,
    List<NamespaceProposalExtension>? extensions,
  }) = NamespaceSession;

  factory Namespace.fromJson(Map<String, dynamic> json) =>
      _$NamespaceFromJson(json);
}

@freezed
class NamespaceProposalExtension with _$NamespaceProposalExtension {
  const factory NamespaceProposalExtension({
    required List<String> chains,
    required List<String> methods,
    required List<String> events,
  }) = _NamespaceProposalExtension;

  factory NamespaceProposalExtension.fromJson(Map<String, dynamic> json) =>
      _$NamespaceProposalExtensionFromJson(json);
}

@freezed
class NamespaceSessionExtension with _$NamespaceSessionExtension {
  const factory NamespaceSessionExtension({
    required List<String> accounts,
    required List<String> methods,
    required List<String> events,
  }) = _NamespaceSessionExtension;

  factory NamespaceSessionExtension.fromJson(Map<String, dynamic> json) =>
      _$NamespaceSessionExtensionFromJson(json);
}
