import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walletconnect_mono_core/core.dart';

part 'core.freezed.dart';

part 'core.g.dart';

@freezed
class CoreParams with _$CoreParams {
  const factory CoreParams.ping(String topic) = CoreParamsPing;

  const factory CoreParams.disconnect(String topic) = CoreParamsDisconnect;

  const factory CoreParams.activate(String topic) = CoreParamsActivate;

  const factory CoreParams.updateExpiry(String topic, Duration expiry) =
      CoreParamsUpdateExpiry;

  const factory CoreParams.updateMetadata(
          String topic, AppMetaDataType type, AppMetaData metadata) =
      CoreParamsUpdateMetadata;

  const factory CoreParams.pair(String uri) = CoreParamsPair;

  factory CoreParams.fromJson(Map<String, dynamic> json) =>
      _$CoreParamsFromJson(json);
}
