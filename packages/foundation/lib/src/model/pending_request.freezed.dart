// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pending_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PendingRequest {
  JsonRpcRequest<dynamic> get request => throw _privateConstructorUsedError;
  Completer<JsonRpcResponse> get completer =>
      throw _privateConstructorUsedError;
  Chain get chain => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PendingRequestCopyWith<PendingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingRequestCopyWith<$Res> {
  factory $PendingRequestCopyWith(
          PendingRequest value, $Res Function(PendingRequest) then) =
      _$PendingRequestCopyWithImpl<$Res, PendingRequest>;
  @useResult
  $Res call(
      {JsonRpcRequest<dynamic> request,
      Completer<JsonRpcResponse> completer,
      Chain chain});

  $JsonRpcRequestCopyWith<dynamic, $Res> get request;
}

/// @nodoc
class _$PendingRequestCopyWithImpl<$Res, $Val extends PendingRequest>
    implements $PendingRequestCopyWith<$Res> {
  _$PendingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? completer = null,
    Object? chain = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest<dynamic>,
      completer: null == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<JsonRpcResponse>,
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as Chain,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JsonRpcRequestCopyWith<dynamic, $Res> get request {
    return $JsonRpcRequestCopyWith<dynamic, $Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PendingRequestCopyWith<$Res>
    implements $PendingRequestCopyWith<$Res> {
  factory _$$_PendingRequestCopyWith(
          _$_PendingRequest value, $Res Function(_$_PendingRequest) then) =
      __$$_PendingRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {JsonRpcRequest<dynamic> request,
      Completer<JsonRpcResponse> completer,
      Chain chain});

  @override
  $JsonRpcRequestCopyWith<dynamic, $Res> get request;
}

/// @nodoc
class __$$_PendingRequestCopyWithImpl<$Res>
    extends _$PendingRequestCopyWithImpl<$Res, _$_PendingRequest>
    implements _$$_PendingRequestCopyWith<$Res> {
  __$$_PendingRequestCopyWithImpl(
      _$_PendingRequest _value, $Res Function(_$_PendingRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? completer = null,
    Object? chain = null,
  }) {
    return _then(_$_PendingRequest(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as JsonRpcRequest<dynamic>,
      null == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<JsonRpcResponse>,
      null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as Chain,
    ));
  }
}

/// @nodoc

class _$_PendingRequest implements _PendingRequest {
  const _$_PendingRequest(this.request, this.completer, this.chain);

  @override
  final JsonRpcRequest<dynamic> request;
  @override
  final Completer<JsonRpcResponse> completer;
  @override
  final Chain chain;

  @override
  String toString() {
    return 'PendingRequest(request: $request, completer: $completer, chain: $chain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PendingRequest &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.completer, completer) ||
                other.completer == completer) &&
            (identical(other.chain, chain) || other.chain == chain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, completer, chain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PendingRequestCopyWith<_$_PendingRequest> get copyWith =>
      __$$_PendingRequestCopyWithImpl<_$_PendingRequest>(this, _$identity);
}

abstract class _PendingRequest implements PendingRequest {
  const factory _PendingRequest(
      final JsonRpcRequest<dynamic> request,
      final Completer<JsonRpcResponse> completer,
      final Chain chain) = _$_PendingRequest;

  @override
  JsonRpcRequest<dynamic> get request;
  @override
  Completer<JsonRpcResponse> get completer;
  @override
  Chain get chain;
  @override
  @JsonKey(ignore: true)
  _$$_PendingRequestCopyWith<_$_PendingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
