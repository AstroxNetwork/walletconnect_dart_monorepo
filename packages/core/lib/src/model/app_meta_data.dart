import 'package:freezed_annotation/freezed_annotation.dart';

import 'redirect.dart';

part 'app_meta_data.freezed.dart';

part 'app_meta_data.g.dart';

enum AppMetaDataType {
  self,
  peer,
  ;

  factory AppMetaDataType.of(String name) {
    return AppMetaDataType.values.firstWhere((e) => e.name == name);
  }
}

@freezed
class AppMetaData with _$AppMetaData {
  const factory AppMetaData({
    required String name,
    required String description,
    required String url,
    required List<String> icons,
    Redirect? redirect,
    //todo: Add Type here
  }) = _AppMetaData;

  factory AppMetaData.fromJson(Map<String, Object?> json) =>
      _$AppMetaDataFromJson(json);
}
