// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelayPublishRequest _$$RelayPublishRequestFromJson(
        Map<String, dynamic> json) =>
    _$RelayPublishRequest(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? irnPublish,
      params: RelayPublishRequestParams.fromJson(
          json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelayPublishRequestToJson(
        _$RelayPublishRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$RelayPublishAcknowledgement _$$RelayPublishAcknowledgementFromJson(
        Map<String, dynamic> json) =>
    _$RelayPublishAcknowledgement(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      result: json['result'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelayPublishAcknowledgementToJson(
        _$RelayPublishAcknowledgement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
      'runtimeType': instance.$type,
    };

_$RelayPublishError _$$RelayPublishErrorFromJson(Map<String, dynamic> json) =>
    _$RelayPublishError(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      error: JsonRpcOnError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelayPublishErrorToJson(_$RelayPublishError instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$RelayPublishResult _$$RelayPublishResultFromJson(Map<String, dynamic> json) =>
    _$RelayPublishResult(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      result: json['result'] as bool?,
      error: json['error'] == null
          ? null
          : JsonRpcOnError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelayPublishResultToJson(
        _$RelayPublishResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$_RelayPublishRequestParams _$$_RelayPublishRequestParamsFromJson(
        Map<String, dynamic> json) =>
    _$_RelayPublishRequestParams(
      topic:
          const TopicConverter().fromJson(json['topic'] as Map<String, String>),
      message: json['message'] as String,
      ttl: const ExpiryConverter().fromJson(json['ttl'] as Map<String, int>),
      tag: json['tag'] as int,
      prompt: json['prompt'] as bool?,
    );

Map<String, dynamic> _$$_RelayPublishRequestParamsToJson(
        _$_RelayPublishRequestParams instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'message': instance.message,
      'ttl': const ExpiryConverter().toJson(instance.ttl),
      'tag': instance.tag,
      'prompt': instance.prompt,
    };

_$_RelayShutdownReason _$$_RelayShutdownReasonFromJson(
        Map<String, dynamic> json) =>
    _$_RelayShutdownReason(
      code: json['code'] as int,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$_RelayShutdownReasonToJson(
        _$_RelayShutdownReason instance) =>
    <String, dynamic>{
      'code': instance.code,
      'reason': instance.reason,
    };

_$_RelaySubscribeRequest _$$_RelaySubscribeRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RelaySubscribeRequest(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? irnSubscribe,
      params: RelaySubscribeRequestParams.fromJson(
          json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RelaySubscribeRequestToJson(
        _$_RelaySubscribeRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
    };

_$_RelaySubscribeResult _$$_RelaySubscribeResultFromJson(
        Map<String, dynamic> json) =>
    _$_RelaySubscribeResult(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      result: json['result'] as String?,
      error: json['error'] == null
          ? null
          : JsonRpcOnError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_RelaySubscribeResultToJson(
        _$_RelaySubscribeResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$RelaySubscribeResultAcknowledgement
    _$$RelaySubscribeResultAcknowledgementFromJson(Map<String, dynamic> json) =>
        _$RelaySubscribeResultAcknowledgement(
          id: json['id'] as int,
          jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
          result: const SubscriptionIdConverter()
              .fromJson(json['result'] as Map<String, String>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$RelaySubscribeResultAcknowledgementToJson(
        _$RelaySubscribeResultAcknowledgement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': const SubscriptionIdConverter().toJson(instance.result),
      'runtimeType': instance.$type,
    };

_$RelaySubscribeResultError _$$RelaySubscribeResultErrorFromJson(
        Map<String, dynamic> json) =>
    _$RelaySubscribeResultError(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      error: JsonRpcOnError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelaySubscribeResultErrorToJson(
        _$RelaySubscribeResultError instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$_RelaySubscribeRequestParams _$$_RelaySubscribeRequestParamsFromJson(
        Map<String, dynamic> json) =>
    _$_RelaySubscribeRequestParams(
      topic:
          const TopicConverter().fromJson(json['topic'] as Map<String, String>),
    );

Map<String, dynamic> _$$_RelaySubscribeRequestParamsToJson(
        _$_RelaySubscribeRequestParams instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
    };

_$RelaySubscriptionRequest _$$RelaySubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    _$RelaySubscriptionRequest(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? irnSubscription,
      params: RelaySubscriptionRequestParams.fromJson(
          json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelaySubscriptionRequestToJson(
        _$RelaySubscriptionRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$RelaySubscriptionAcknowledgement _$$RelaySubscriptionAcknowledgementFromJson(
        Map<String, dynamic> json) =>
    _$RelaySubscriptionAcknowledgement(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      result: json['result'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelaySubscriptionAcknowledgementToJson(
        _$RelaySubscriptionAcknowledgement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
      'runtimeType': instance.$type,
    };

_$RelaySubscriptionError _$$RelaySubscriptionErrorFromJson(
        Map<String, dynamic> json) =>
    _$RelaySubscriptionError(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      error: JsonRpcOnError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelaySubscriptionErrorToJson(
        _$RelaySubscriptionError instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$RelaySubscriptionResult _$$RelaySubscriptionResultFromJson(
        Map<String, dynamic> json) =>
    _$RelaySubscriptionResult(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      result: json['result'] as bool?,
      error: json['error'] == null
          ? null
          : JsonRpcOnError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelaySubscriptionResultToJson(
        _$RelaySubscriptionResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$_RelaySubscriptionRequestParams _$$_RelaySubscriptionRequestParamsFromJson(
        Map<String, dynamic> json) =>
    _$_RelaySubscriptionRequestParams(
      subscriptionId: const SubscriptionIdConverter()
          .fromJson(json['subscriptionId'] as Map<String, String>),
      subscriptionData: RelaySubscriptionRequestParamsData.fromJson(
          json['subscriptionData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RelaySubscriptionRequestParamsToJson(
        _$_RelaySubscriptionRequestParams instance) =>
    <String, dynamic>{
      'subscriptionId':
          const SubscriptionIdConverter().toJson(instance.subscriptionId),
      'subscriptionData': instance.subscriptionData,
    };

_$_RelaySubscriptionRequestParamsData
    _$$_RelaySubscriptionRequestParamsDataFromJson(Map<String, dynamic> json) =>
        _$_RelaySubscriptionRequestParamsData(
          topic: const TopicConverter()
              .fromJson(json['topic'] as Map<String, String>),
          message: json['message'] as String,
        );

Map<String, dynamic> _$$_RelaySubscriptionRequestParamsDataToJson(
        _$_RelaySubscriptionRequestParamsData instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'message': instance.message,
    };

_$RelayUnsubscribeRequest _$$RelayUnsubscribeRequestFromJson(
        Map<String, dynamic> json) =>
    _$RelayUnsubscribeRequest(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      method: json['method'] as String? ?? irnUnsubscribe,
      params: RelayUnsubscribeRequestParams.fromJson(
          json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelayUnsubscribeRequestToJson(
        _$RelayUnsubscribeRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$RelayUnsubscribeAcknowledgement _$$RelayUnsubscribeAcknowledgementFromJson(
        Map<String, dynamic> json) =>
    _$RelayUnsubscribeAcknowledgement(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      result: json['result'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelayUnsubscribeAcknowledgementToJson(
        _$RelayUnsubscribeAcknowledgement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
      'runtimeType': instance.$type,
    };

_$RelayUnsubscribeError _$$RelayUnsubscribeErrorFromJson(
        Map<String, dynamic> json) =>
    _$RelayUnsubscribeError(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      error: JsonRpcOnError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelayUnsubscribeErrorToJson(
        _$RelayUnsubscribeError instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$RelayUnsubscribeResult _$$RelayUnsubscribeResultFromJson(
        Map<String, dynamic> json) =>
    _$RelayUnsubscribeResult(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String? ?? jsonRpcVersion,
      result: json['result'] as bool?,
      error: json['error'] == null
          ? null
          : JsonRpcOnError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelayUnsubscribeResultToJson(
        _$RelayUnsubscribeResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$_RelayUnsubscribeRequestParams _$$_RelayUnsubscribeRequestParamsFromJson(
        Map<String, dynamic> json) =>
    _$_RelayUnsubscribeRequestParams(
      topic:
          const TopicConverter().fromJson(json['topic'] as Map<String, String>),
      subscriptionId: const SubscriptionIdConverter()
          .fromJson(json['subscriptionId'] as Map<String, String>),
    );

Map<String, dynamic> _$$_RelayUnsubscribeRequestParamsToJson(
        _$_RelayUnsubscribeRequestParams instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'subscriptionId':
          const SubscriptionIdConverter().toJson(instance.subscriptionId),
    };
