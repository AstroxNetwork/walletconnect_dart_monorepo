import 'package:freezed_annotation/freezed_annotation.dart';

part 'redirect.freezed.dart';part 'redirect.g.dart';

@freezed
class Redirect with _$Redirect {
  const factory Redirect({
    String? native,
    String? universal,
  }) = _Redirect;

  factory Redirect.fromJson(Map<String, Object?> json) =>
      _$RedirectFromJson(json);
}
