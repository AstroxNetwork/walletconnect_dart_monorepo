import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

import 'snippets.dart';

class Uint8ListToListIntConverter
    implements JsonConverter<Uint8List, List<int>> {
  @override
  Uint8List fromJson(List<int> json) {
    return Uint8List.fromList(json);
  }

  @override
  List<int> toJson(Uint8List object) {
    return object.toList(growable: false);
  }

  const Uint8ListToListIntConverter();
}

class Uint8ListToHexConverter implements JsonConverter<Uint8List, String> {
  const Uint8ListToHexConverter();

  @override
  Uint8List fromJson(String json) {
    return json.hexToBytes();
  }

  @override
  String toJson(Uint8List object) {
    return object.bytesToHex();
  }
}

class TopicConverter implements JsonConverter<String, Map<String, String>> {
  const TopicConverter();

  @override
  String fromJson(Map<String, String> json) {
    return json['value'] as String;
  }

  @override
  Map<String, String> toJson(String object) {
    return {'value': object};
  }
}

class ExpiryConverter implements JsonConverter<Duration, Map<String, int>> {
  const ExpiryConverter();

  @override
  Duration fromJson(Map<String, int> json) {
    return Duration(seconds: json['seconds'] as int);
  }

  @override
  Map<String, int> toJson(Duration object) {
    return {'seconds': object.inSeconds};
  }
}

typedef TtlConverter = ExpiryConverter;

class UriStringConverter implements JsonConverter<Uri, String> {
  const UriStringConverter();

  @override
  Uri fromJson(String json) {
    return Uri.parse(json);
  }

  @override
  String toJson(Uri object) {
    return object.toString();
  }
}

class SubscriptionIdConverter
    implements JsonConverter<String, Map<String, String>> {
  const SubscriptionIdConverter();

  @override
  String fromJson(Map<String, String> json) {
    return json['id'] as String;
  }

  @override
  Map<String, String> toJson(String object) {
    return {'id': object};
  }
}

class ObjectConverter implements JsonConverter<Object, Object> {
  const ObjectConverter();

  @override
  Object fromJson(Object json) {
    return json;
  }

  @override
  Object toJson(dynamic object) {
    try {
      return object.toJson();
    } catch (e) {
      return object;
    }
  }
}
