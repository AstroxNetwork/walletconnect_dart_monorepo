// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PendingRequest _$$_PendingRequestFromJson(Map json) => _$_PendingRequest(
      id: json['id'] as int,
      payloadParams: PayloadParams.fromJson(
          Map<String, Object?>.from(json['payloadParams'] as Map)),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_PendingRequestToJson(_$_PendingRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payloadParams': instance.payloadParams.toJson(),
      'message': instance.message,
    };
