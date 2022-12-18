// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RelayPublishRequestParams _$$_RelayPublishRequestParamsFromJson(Map json) =>
    _$_RelayPublishRequestParams(
      topic: const TopicConverter().fromJson(json['topic'] as Map),
      message: json['message'] as String,
      ttl: const ExpiryConverter().fromJson(json['ttl'] as Map),
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

_$_RelayShutdownReason _$$_RelayShutdownReasonFromJson(Map json) =>
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

_$_RelaySubscribeRequestParams _$$_RelaySubscribeRequestParamsFromJson(
        Map json) =>
    _$_RelaySubscribeRequestParams(
      topic: const TopicConverter().fromJson(json['topic'] as Map),
    );

Map<String, dynamic> _$$_RelaySubscribeRequestParamsToJson(
        _$_RelaySubscribeRequestParams instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
    };

_$_RelaySubscriptionRequestParams _$$_RelaySubscriptionRequestParamsFromJson(
        Map json) =>
    _$_RelaySubscriptionRequestParams(
      subscriptionId: const SubscriptionIdConverter()
          .fromJson(json['subscriptionId'] as Map),
      subscriptionData: RelaySubscriptionRequestParamsData.fromJson(
          Map<String, Object?>.from(json['subscriptionData'] as Map)),
    );

Map<String, dynamic> _$$_RelaySubscriptionRequestParamsToJson(
        _$_RelaySubscriptionRequestParams instance) =>
    <String, dynamic>{
      'subscriptionId':
          const SubscriptionIdConverter().toJson(instance.subscriptionId),
      'subscriptionData': instance.subscriptionData.toJson(),
    };

_$_RelaySubscriptionRequestParamsData
    _$$_RelaySubscriptionRequestParamsDataFromJson(Map json) =>
        _$_RelaySubscriptionRequestParamsData(
          topic: const TopicConverter().fromJson(json['topic'] as Map),
          message: json['message'] as String,
        );

Map<String, dynamic> _$$_RelaySubscriptionRequestParamsDataToJson(
        _$_RelaySubscriptionRequestParamsData instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'message': instance.message,
    };

_$_RelayUnsubscribeRequestParams _$$_RelayUnsubscribeRequestParamsFromJson(
        Map json) =>
    _$_RelayUnsubscribeRequestParams(
      topic: const TopicConverter().fromJson(json['topic'] as Map),
      subscriptionId: const SubscriptionIdConverter()
          .fromJson(json['subscriptionId'] as Map),
    );

Map<String, dynamic> _$$_RelayUnsubscribeRequestParamsToJson(
        _$_RelayUnsubscribeRequestParams instance) =>
    <String, dynamic>{
      'topic': const TopicConverter().toJson(instance.topic),
      'subscriptionId':
          const SubscriptionIdConverter().toJson(instance.subscriptionId),
    };
