import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  @JsonSerializable(explicitToJson: true)
  const factory Question.shortAnswer({
    required String name,
    required String questionText,
    required String generalFeedback,
    required double defaultGrade,
    required double penalty,
    @JsonSerializable(explicitToJson: true) required List<ShortAnswer> answers,
  }) = ShortAnswerQuestion;

  @JsonSerializable(explicitToJson: true)
  const factory Question.trueFalse({
    required String name,
    required String questionText,
    required String generalFeedback,
    required double defaultGrade,
    required double penalty,
    @JsonSerializable(explicitToJson: true)
    required TrueFalseAnswer correctAnswer,
  }) = TrueFalseQuestion;

  @JsonSerializable(explicitToJson: true)
  const factory Question.multiChoice({
    required String name,
    required String questionText,
    required String generalFeedback,
    required double defaultGrade,
    required double penalty,
    required bool single,
    required bool shuffleAnswers,
    @JsonSerializable(explicitToJson: true)
    required List<MultiChoiceAnswer> answers,
    required String correctFeedback,
    required String partiallyCorrectFeedback,
    required String incorrectFeedback,
  }) = MultichoiceQuestion;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class ShortAnswer with _$ShortAnswer {
  const factory ShortAnswer({
    required String text,
    required String feedback,
  }) = _ShortAnswer;

  factory ShortAnswer.fromJson(Map<String, dynamic> json) =>
      _$ShortAnswerFromJson(json);
}

@freezed
class TrueFalseAnswer with _$TrueFalseAnswer {
  const factory TrueFalseAnswer({
    required bool isTrue,
    required String feedback,
  }) = _TrueFalseAnswer;

  factory TrueFalseAnswer.fromJson(Map<String, dynamic> json) =>
      _$TrueFalseAnswerFromJson(json);
}

@freezed
class MultiChoiceAnswer with _$MultiChoiceAnswer {
  const factory MultiChoiceAnswer({
    required String text,
    required String feedback,
    required int fraction,
  }) = _MultiChoiceAnswer;

  factory MultiChoiceAnswer.fromJson(Map<String, dynamic> json) =>
      _$MultiChoiceAnswerFromJson(json);
}
