// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
