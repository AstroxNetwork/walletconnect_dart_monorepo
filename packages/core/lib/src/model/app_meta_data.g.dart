// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppMetaData _$$_AppMetaDataFromJson(Map<String, dynamic> json) =>
    _$_AppMetaData(
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      icons: (json['icons'] as List<dynamic>).map((e) => e as String).toList(),
      redirect: json['redirect'] == null
          ? null
          : Redirect.fromJson(json['redirect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppMetaDataToJson(_$_AppMetaData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'icons': instance.icons,
      'redirect': instance.redirect,
    };
