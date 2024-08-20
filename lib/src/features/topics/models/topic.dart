import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';

part 'topic.g.dart';

@freezed
class Topic with _$Topic {
  const factory Topic({
    required String id,
    required String name,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);

  static List<Topic> listFromJson(List<dynamic> json) =>
      json.map<Topic>((e) => Topic.fromJson(e)).toList();
}
