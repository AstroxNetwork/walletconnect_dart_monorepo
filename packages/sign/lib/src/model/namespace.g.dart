// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namespace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NamespaceProposal _$$NamespaceProposalFromJson(Map<String, dynamic> json) =>
    _$NamespaceProposal(
      chains:
          (json['chains'] as List<dynamic>).map((e) => e as String).toList(),
      methods:
          (json['methods'] as List<dynamic>).map((e) => e as String).toList(),
      events:
          (json['events'] as List<dynamic>).map((e) => e as String).toList(),
      extensions: (json['extensions'] as List<dynamic>?)
          ?.map((e) =>
              NamespaceProposalExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NamespaceProposalToJson(_$NamespaceProposal instance) =>
    <String, dynamic>{
      'chains': instance.chains,
      'methods': instance.methods,
      'events': instance.events,
      'extensions': instance.extensions,
      'runtimeType': instance.$type,
    };

_$NamespaceSession _$$NamespaceSessionFromJson(Map<String, dynamic> json) =>
    _$NamespaceSession(
      accounts:
          (json['accounts'] as List<dynamic>).map((e) => e as String).toList(),
      methods:
          (json['methods'] as List<dynamic>).map((e) => e as String).toList(),
      events:
          (json['events'] as List<dynamic>).map((e) => e as String).toList(),
      extensions: (json['extensions'] as List<dynamic>?)
          ?.map((e) =>
              NamespaceProposalExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NamespaceSessionToJson(_$NamespaceSession instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
      'methods': instance.methods,
      'events': instance.events,
      'extensions': instance.extensions,
      'runtimeType': instance.$type,
    };

_$_NamespaceProposalExtension _$$_NamespaceProposalExtensionFromJson(
        Map<String, dynamic> json) =>
    _$_NamespaceProposalExtension(
      chains:
          (json['chains'] as List<dynamic>).map((e) => e as String).toList(),
      methods:
          (json['methods'] as List<dynamic>).map((e) => e as String).toList(),
      events:
          (json['events'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_NamespaceProposalExtensionToJson(
        _$_NamespaceProposalExtension instance) =>
    <String, dynamic>{
      'chains': instance.chains,
      'methods': instance.methods,
      'events': instance.events,
    };

_$_NamespaceSessionExtension _$$_NamespaceSessionExtensionFromJson(
        Map<String, dynamic> json) =>
    _$_NamespaceSessionExtension(
      accounts:
          (json['accounts'] as List<dynamic>).map((e) => e as String).toList(),
      methods:
          (json['methods'] as List<dynamic>).map((e) => e as String).toList(),
      events:
          (json['events'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_NamespaceSessionExtensionToJson(
        _$_NamespaceSessionExtension instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
      'methods': instance.methods,
      'events': instance.events,
    };
