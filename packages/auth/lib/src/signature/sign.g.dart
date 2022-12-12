// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignatureData _$$_SignatureDataFromJson(Map<String, dynamic> json) =>
    _$_SignatureData(
      const Uint8ListToListIntConverter().fromJson(json['v'] as List<int>),
      const Uint8ListToListIntConverter().fromJson(json['r'] as List<int>),
      const Uint8ListToListIntConverter().fromJson(json['s'] as List<int>),
    );

Map<String, dynamic> _$$_SignatureDataToJson(_$_SignatureData instance) =>
    <String, dynamic>{
      'v': const Uint8ListToListIntConverter().toJson(instance.v),
      'r': const Uint8ListToListIntConverter().toJson(instance.r),
      's': const Uint8ListToListIntConverter().toJson(instance.s),
    };

_$_ECKeyPair _$$_ECKeyPairFromJson(Map<String, dynamic> json) => _$_ECKeyPair(
      privateKey: BigInt.parse(json['privateKey'] as String),
      publicKey: BigInt.parse(json['publicKey'] as String),
    );

Map<String, dynamic> _$$_ECKeyPairToJson(_$_ECKeyPair instance) =>
    <String, dynamic>{
      'privateKey': instance.privateKey.toString(),
      'publicKey': instance.publicKey.toString(),
    };

_$_ECDSASignature _$$_ECDSASignatureFromJson(Map<String, dynamic> json) =>
    _$_ECDSASignature(
      BigInt.parse(json['r'] as String),
      BigInt.parse(json['s'] as String),
    );

Map<String, dynamic> _$$_ECDSASignatureToJson(_$_ECDSASignature instance) =>
    <String, dynamic>{
      'r': instance.r.toString(),
      's': instance.s.toString(),
    };
