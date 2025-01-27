import 'package:app/src/features/questions/questions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuestionsStateHolder extends StateNotifier<QuestionsState> {
  QuestionsStateHolder()
      : super(
          QuestionsState.initial(<Question>[]),
        );

  void clear() => state = QuestionsState.initial(<Question>[]);

  void setQuestions(List<Question> questions) {
    state = state.copyWith(questions: questions);
  }

  void selectAnswer(Map<int, dynamic> updatedSelectedAnswers) {
    if (!mounted) return;
    state = state.copyWith(selectedAnswers: updatedSelectedAnswers);
  }

  void setAnswersCorrectness(Map<int, bool> answersCorrectness) {
    if (!mounted) return;
    state = state.copyWith(isAnswerCorrect: answersCorrectness);
  }

  int get questionsCount => state.questions.length;
}
