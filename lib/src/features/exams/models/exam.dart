import 'package:freezed_annotation/freezed_annotation.dart';

import '../../topics/models/models.dart';

part 'exam.freezed.dart';

part 'exam.g.dart';

@freezed
class Exam with _$Exam {
  const factory Exam({
    required String id,
    required String name,
    required int topicsCount,
    @Default([]) List<Topic> topics,
  }) = _Exam;

  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);

  static List<Exam> listFromJson(List<dynamic> json) =>
      json.map<Exam>((e) => Exam.fromJson(e)).toList();
}
