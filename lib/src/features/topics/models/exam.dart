import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'exam.freezed.dart';

part 'exam.g.dart';

@freezed
class Exam with _$Exam {
  const factory Exam({
    required String name,
    required List<Topic> topics,
  }) = _Exam;

  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);
}
