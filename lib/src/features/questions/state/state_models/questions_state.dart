import 'package:app/src/features/questions/questions.dart';

class QuestionsState {
  final List<Question> questions;
  final Map<int, dynamic>
  selectedAnswers; // key: questionIndex, value: selected answer
  final Map<int, bool>
  isAnswerCorrect; // key: questionIndex, value: correctness

  QuestionsState({
    required this.questions,
    required this.selectedAnswers,
    required this.isAnswerCorrect,
  });

  QuestionsState.initial(this.questions)
      : selectedAnswers = {},
        isAnswerCorrect = {};

  QuestionsState copyWith({
    List<Question>? questions,
    Map<int, dynamic>? selectedAnswers,
    Map<int, bool>? isAnswerCorrect,
  }) {
    return QuestionsState(
      questions: questions ?? this.questions,
      selectedAnswers: selectedAnswers ?? this.selectedAnswers,
      isAnswerCorrect: isAnswerCorrect ?? this.isAnswerCorrect,
    );
  }
}