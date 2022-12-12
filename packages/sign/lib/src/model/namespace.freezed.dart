// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'namespace.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Namespace _$NamespaceFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'proposal':
      return NamespaceProposal.fromJson(json);
    case 'session':
      return NamespaceSession.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Namespace',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Namespace {
  List<String> get methods => throw _privateConstructorUsedError;
  List<String> get events => throw _privateConstructorUsedError;
  List<NamespaceProposalExtension>? get extensions =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> chains, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)
        proposal,
    required TResult Function(List<String> accounts, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)
        session,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> chains, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        proposal,
    TResult? Function(List<String> accounts, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        session,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> chains, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        proposal,
    TResult Function(List<String> accounts, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        session,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NamespaceProposal value) proposal,
    required TResult Function(NamespaceSession value) session,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NamespaceProposal value)? proposal,
    TResult? Function(NamespaceSession value)? session,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NamespaceProposal value)? proposal,
    TResult Function(NamespaceSession value)? session,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamespaceCopyWith<Namespace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamespaceCopyWith<$Res> {
  factory $NamespaceCopyWith(Namespace value, $Res Function(Namespace) then) =
      _$NamespaceCopyWithImpl<$Res, Namespace>;
  @useResult
  $Res call(
      {List<String> methods,
      List<String> events,
      List<NamespaceProposalExtension>? extensions});
}

/// @nodoc
class _$NamespaceCopyWithImpl<$Res, $Val extends Namespace>
    implements $NamespaceCopyWith<$Res> {
  _$NamespaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? methods = null,
    Object? events = null,
    Object? extensions = freezed,
  }) {
    return _then(_value.copyWith(
      methods: null == methods
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as List<NamespaceProposalExtension>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NamespaceProposalCopyWith<$Res>
    implements $NamespaceCopyWith<$Res> {
  factory _$$NamespaceProposalCopyWith(
          _$NamespaceProposal value, $Res Function(_$NamespaceProposal) then) =
      __$$NamespaceProposalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> chains,
      List<String> methods,
      List<String> events,
      List<NamespaceProposalExtension>? extensions});
}

/// @nodoc
class __$$NamespaceProposalCopyWithImpl<$Res>
    extends _$NamespaceCopyWithImpl<$Res, _$NamespaceProposal>
    implements _$$NamespaceProposalCopyWith<$Res> {
  __$$NamespaceProposalCopyWithImpl(
      _$NamespaceProposal _value, $Res Function(_$NamespaceProposal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chains = null,
    Object? methods = null,
    Object? events = null,
    Object? extensions = freezed,
  }) {
    return _then(_$NamespaceProposal(
      chains: null == chains
          ? _value._chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<String>,
      methods: null == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extensions: freezed == extensions
          ? _value._extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as List<NamespaceProposalExtension>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamespaceProposal implements NamespaceProposal {
  const _$NamespaceProposal(
      {required final List<String> chains,
      required final List<String> methods,
      required final List<String> events,
      final List<NamespaceProposalExtension>? extensions,
      final String? $type})
      : _chains = chains,
        _methods = methods,
        _events = events,
        _extensions = extensions,
        $type = $type ?? 'proposal';

  factory _$NamespaceProposal.fromJson(Map<String, dynamic> json) =>
      _$$NamespaceProposalFromJson(json);

  final List<String> _chains;
  @override
  List<String> get chains {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chains);
  }

  final List<String> _methods;
  @override
  List<String> get methods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<String> _events;
  @override
  List<String> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<NamespaceProposalExtension>? _extensions;
  @override
  List<NamespaceProposalExtension>? get extensions {
    final value = _extensions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Namespace.proposal(chains: $chains, methods: $methods, events: $events, extensions: $extensions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamespaceProposal &&
            const DeepCollectionEquality().equals(other._chains, _chains) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._extensions, _extensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chains),
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_extensions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamespaceProposalCopyWith<_$NamespaceProposal> get copyWith =>
      __$$NamespaceProposalCopyWithImpl<_$NamespaceProposal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> chains, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)
        proposal,
    required TResult Function(List<String> accounts, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)
        session,
  }) {
    return proposal(chains, methods, events, extensions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> chains, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        proposal,
    TResult? Function(List<String> accounts, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        session,
  }) {
    return proposal?.call(chains, methods, events, extensions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> chains, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        proposal,
    TResult Function(List<String> accounts, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        session,
    required TResult orElse(),
  }) {
    if (proposal != null) {
      return proposal(chains, methods, events, extensions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NamespaceProposal value) proposal,
    required TResult Function(NamespaceSession value) session,
  }) {
    return proposal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NamespaceProposal value)? proposal,
    TResult? Function(NamespaceSession value)? session,
  }) {
    return proposal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NamespaceProposal value)? proposal,
    TResult Function(NamespaceSession value)? session,
    required TResult orElse(),
  }) {
    if (proposal != null) {
      return proposal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NamespaceProposalToJson(
      this,
    );
  }
}

abstract class NamespaceProposal implements Namespace {
  const factory NamespaceProposal(
          {required final List<String> chains,
          required final List<String> methods,
          required final List<String> events,
          final List<NamespaceProposalExtension>? extensions}) =
      _$NamespaceProposal;

  factory NamespaceProposal.fromJson(Map<String, dynamic> json) =
      _$NamespaceProposal.fromJson;

  List<String> get chains;
  @override
  List<String> get methods;
  @override
  List<String> get events;
  @override
  List<NamespaceProposalExtension>? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$NamespaceProposalCopyWith<_$NamespaceProposal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NamespaceSessionCopyWith<$Res>
    implements $NamespaceCopyWith<$Res> {
  factory _$$NamespaceSessionCopyWith(
          _$NamespaceSession value, $Res Function(_$NamespaceSession) then) =
      __$$NamespaceSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> accounts,
      List<String> methods,
      List<String> events,
      List<NamespaceProposalExtension>? extensions});
}

/// @nodoc
class __$$NamespaceSessionCopyWithImpl<$Res>
    extends _$NamespaceCopyWithImpl<$Res, _$NamespaceSession>
    implements _$$NamespaceSessionCopyWith<$Res> {
  __$$NamespaceSessionCopyWithImpl(
      _$NamespaceSession _value, $Res Function(_$NamespaceSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? methods = null,
    Object? events = null,
    Object? extensions = freezed,
  }) {
    return _then(_$NamespaceSession(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      methods: null == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extensions: freezed == extensions
          ? _value._extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as List<NamespaceProposalExtension>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamespaceSession implements NamespaceSession {
  const _$NamespaceSession(
      {required final List<String> accounts,
      required final List<String> methods,
      required final List<String> events,
      final List<NamespaceProposalExtension>? extensions,
      final String? $type})
      : _accounts = accounts,
        _methods = methods,
        _events = events,
        _extensions = extensions,
        $type = $type ?? 'session';

  factory _$NamespaceSession.fromJson(Map<String, dynamic> json) =>
      _$$NamespaceSessionFromJson(json);

  final List<String> _accounts;
  @override
  List<String> get accounts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final List<String> _methods;
  @override
  List<String> get methods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<String> _events;
  @override
  List<String> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<NamespaceProposalExtension>? _extensions;
  @override
  List<NamespaceProposalExtension>? get extensions {
    final value = _extensions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Namespace.session(accounts: $accounts, methods: $methods, events: $events, extensions: $extensions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamespaceSession &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._extensions, _extensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_extensions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamespaceSessionCopyWith<_$NamespaceSession> get copyWith =>
      __$$NamespaceSessionCopyWithImpl<_$NamespaceSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> chains, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)
        proposal,
    required TResult Function(List<String> accounts, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)
        session,
  }) {
    return session(accounts, methods, events, extensions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> chains, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        proposal,
    TResult? Function(List<String> accounts, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        session,
  }) {
    return session?.call(accounts, methods, events, extensions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> chains, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        proposal,
    TResult Function(List<String> accounts, List<String> methods,
            List<String> events, List<NamespaceProposalExtension>? extensions)?
        session,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(accounts, methods, events, extensions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NamespaceProposal value) proposal,
    required TResult Function(NamespaceSession value) session,
  }) {
    return session(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NamespaceProposal value)? proposal,
    TResult? Function(NamespaceSession value)? session,
  }) {
    return session?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NamespaceProposal value)? proposal,
    TResult Function(NamespaceSession value)? session,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NamespaceSessionToJson(
      this,
    );
  }
}

abstract class NamespaceSession implements Namespace {
  const factory NamespaceSession(
      {required final List<String> accounts,
      required final List<String> methods,
      required final List<String> events,
      final List<NamespaceProposalExtension>? extensions}) = _$NamespaceSession;

  factory NamespaceSession.fromJson(Map<String, dynamic> json) =
      _$NamespaceSession.fromJson;

  List<String> get accounts;
  @override
  List<String> get methods;
  @override
  List<String> get events;
  @override
  List<NamespaceProposalExtension>? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$NamespaceSessionCopyWith<_$NamespaceSession> get copyWith =>
      throw _privateConstructorUsedError;
}

NamespaceProposalExtension _$NamespaceProposalExtensionFromJson(
    Map<String, dynamic> json) {
  return _NamespaceProposalExtension.fromJson(json);
}

/// @nodoc
mixin _$NamespaceProposalExtension {
  List<String> get chains => throw _privateConstructorUsedError;
  List<String> get methods => throw _privateConstructorUsedError;
  List<String> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamespaceProposalExtensionCopyWith<NamespaceProposalExtension>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamespaceProposalExtensionCopyWith<$Res> {
  factory $NamespaceProposalExtensionCopyWith(NamespaceProposalExtension value,
          $Res Function(NamespaceProposalExtension) then) =
      _$NamespaceProposalExtensionCopyWithImpl<$Res,
          NamespaceProposalExtension>;
  @useResult
  $Res call({List<String> chains, List<String> methods, List<String> events});
}

/// @nodoc
class _$NamespaceProposalExtensionCopyWithImpl<$Res,
        $Val extends NamespaceProposalExtension>
    implements $NamespaceProposalExtensionCopyWith<$Res> {
  _$NamespaceProposalExtensionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chains = null,
    Object? methods = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      chains: null == chains
          ? _value.chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<String>,
      methods: null == methods
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NamespaceProposalExtensionCopyWith<$Res>
    implements $NamespaceProposalExtensionCopyWith<$Res> {
  factory _$$_NamespaceProposalExtensionCopyWith(
          _$_NamespaceProposalExtension value,
          $Res Function(_$_NamespaceProposalExtension) then) =
      __$$_NamespaceProposalExtensionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> chains, List<String> methods, List<String> events});
}

/// @nodoc
class __$$_NamespaceProposalExtensionCopyWithImpl<$Res>
    extends _$NamespaceProposalExtensionCopyWithImpl<$Res,
        _$_NamespaceProposalExtension>
    implements _$$_NamespaceProposalExtensionCopyWith<$Res> {
  __$$_NamespaceProposalExtensionCopyWithImpl(
      _$_NamespaceProposalExtension _value,
      $Res Function(_$_NamespaceProposalExtension) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chains = null,
    Object? methods = null,
    Object? events = null,
  }) {
    return _then(_$_NamespaceProposalExtension(
      chains: null == chains
          ? _value._chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<String>,
      methods: null == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NamespaceProposalExtension implements _NamespaceProposalExtension {
  const _$_NamespaceProposalExtension(
      {required final List<String> chains,
      required final List<String> methods,
      required final List<String> events})
      : _chains = chains,
        _methods = methods,
        _events = events;

  factory _$_NamespaceProposalExtension.fromJson(Map<String, dynamic> json) =>
      _$$_NamespaceProposalExtensionFromJson(json);

  final List<String> _chains;
  @override
  List<String> get chains {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chains);
  }

  final List<String> _methods;
  @override
  List<String> get methods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<String> _events;
  @override
  List<String> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'NamespaceProposalExtension(chains: $chains, methods: $methods, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NamespaceProposalExtension &&
            const DeepCollectionEquality().equals(other._chains, _chains) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chains),
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NamespaceProposalExtensionCopyWith<_$_NamespaceProposalExtension>
      get copyWith => __$$_NamespaceProposalExtensionCopyWithImpl<
          _$_NamespaceProposalExtension>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NamespaceProposalExtensionToJson(
      this,
    );
  }
}

abstract class _NamespaceProposalExtension
    implements NamespaceProposalExtension {
  const factory _NamespaceProposalExtension(
      {required final List<String> chains,
      required final List<String> methods,
      required final List<String> events}) = _$_NamespaceProposalExtension;

  factory _NamespaceProposalExtension.fromJson(Map<String, dynamic> json) =
      _$_NamespaceProposalExtension.fromJson;

  @override
  List<String> get chains;
  @override
  List<String> get methods;
  @override
  List<String> get events;
  @override
  @JsonKey(ignore: true)
  _$$_NamespaceProposalExtensionCopyWith<_$_NamespaceProposalExtension>
      get copyWith => throw _privateConstructorUsedError;
}

NamespaceSessionExtension _$NamespaceSessionExtensionFromJson(
    Map<String, dynamic> json) {
  return _NamespaceSessionExtension.fromJson(json);
}

/// @nodoc
mixin _$NamespaceSessionExtension {
  List<String> get accounts => throw _privateConstructorUsedError;
  List<String> get methods => throw _privateConstructorUsedError;
  List<String> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamespaceSessionExtensionCopyWith<NamespaceSessionExtension> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamespaceSessionExtensionCopyWith<$Res> {
  factory $NamespaceSessionExtensionCopyWith(NamespaceSessionExtension value,
          $Res Function(NamespaceSessionExtension) then) =
      _$NamespaceSessionExtensionCopyWithImpl<$Res, NamespaceSessionExtension>;
  @useResult
  $Res call({List<String> accounts, List<String> methods, List<String> events});
}

/// @nodoc
class _$NamespaceSessionExtensionCopyWithImpl<$Res,
        $Val extends NamespaceSessionExtension>
    implements $NamespaceSessionExtensionCopyWith<$Res> {
  _$NamespaceSessionExtensionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? methods = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      methods: null == methods
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NamespaceSessionExtensionCopyWith<$Res>
    implements $NamespaceSessionExtensionCopyWith<$Res> {
  factory _$$_NamespaceSessionExtensionCopyWith(
          _$_NamespaceSessionExtension value,
          $Res Function(_$_NamespaceSessionExtension) then) =
      __$$_NamespaceSessionExtensionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> accounts, List<String> methods, List<String> events});
}

/// @nodoc
class __$$_NamespaceSessionExtensionCopyWithImpl<$Res>
    extends _$NamespaceSessionExtensionCopyWithImpl<$Res,
        _$_NamespaceSessionExtension>
    implements _$$_NamespaceSessionExtensionCopyWith<$Res> {
  __$$_NamespaceSessionExtensionCopyWithImpl(
      _$_NamespaceSessionExtension _value,
      $Res Function(_$_NamespaceSessionExtension) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? methods = null,
    Object? events = null,
  }) {
    return _then(_$_NamespaceSessionExtension(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      methods: null == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NamespaceSessionExtension implements _NamespaceSessionExtension {
  const _$_NamespaceSessionExtension(
      {required final List<String> accounts,
      required final List<String> methods,
      required final List<String> events})
      : _accounts = accounts,
        _methods = methods,
        _events = events;

  factory _$_NamespaceSessionExtension.fromJson(Map<String, dynamic> json) =>
      _$$_NamespaceSessionExtensionFromJson(json);

  final List<String> _accounts;
  @override
  List<String> get accounts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final List<String> _methods;
  @override
  List<String> get methods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<String> _events;
  @override
  List<String> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'NamespaceSessionExtension(accounts: $accounts, methods: $methods, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NamespaceSessionExtension &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NamespaceSessionExtensionCopyWith<_$_NamespaceSessionExtension>
      get copyWith => __$$_NamespaceSessionExtensionCopyWithImpl<
          _$_NamespaceSessionExtension>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NamespaceSessionExtensionToJson(
      this,
    );
  }
}

abstract class _NamespaceSessionExtension implements NamespaceSessionExtension {
  const factory _NamespaceSessionExtension(
      {required final List<String> accounts,
      required final List<String> methods,
      required final List<String> events}) = _$_NamespaceSessionExtension;

  factory _NamespaceSessionExtension.fromJson(Map<String, dynamic> json) =
      _$_NamespaceSessionExtension.fromJson;

  @override
  List<String> get accounts;
  @override
  List<String> get methods;
  @override
  List<String> get events;
  @override
  @JsonKey(ignore: true)
  _$$_NamespaceSessionExtensionCopyWith<_$_NamespaceSessionExtension>
      get copyWith => throw _privateConstructorUsedError;
}
