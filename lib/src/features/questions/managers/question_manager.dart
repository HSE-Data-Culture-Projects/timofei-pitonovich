import 'package:app/src/features/questions/di/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/src/features/questions/questions.dart';

final questionsManagerProvider =
    StateNotifierProvider.autoDispose<QuestionsManager, QuestionsState>((ref) {
  final repository = ref.watch(questionsRepositoryProvider);
  return QuestionsManager(repository);
});

class QuestionsState {
  final List<Question> questions;
  final Map<int, dynamic> selectedAnswers; // key: questionIndex, value: selected answer
  final Map<int, bool> isAnswerCorrect; // key: questionIndex, value: correctness

  QuestionsState({
    required this.questions,
    required this.selectedAnswers,
    required this.isAnswerCorrect,
  });

  QuestionsState.initial(List<Question> questions)
      : questions = questions,
        selectedAnswers = {},
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

class QuestionsManager extends StateNotifier<QuestionsState> {
  final QuestionsRepository repository;

  QuestionsManager(this.repository)
      : super(QuestionsState.initial(repository.getQuestionsByTopicId(1)));

  void selectAnswer(int questionIndex, dynamic answer) {
    final updatedSelectedAnswers = Map<int, dynamic>.from(state.selectedAnswers)
      ..[questionIndex] = answer;

    state = state.copyWith(selectedAnswers: updatedSelectedAnswers);
  }

  void checkAnswer(int questionIndex) {
    final question = state.questions[questionIndex];
    final selectedAnswer = state.selectedAnswers[questionIndex];

    bool isCorrect = false;

    if (question is TrueFalseQuestion) {
      isCorrect = selectedAnswer == question.correctAnswer;
    } else if (question is MultichoiceQuestion) {
      if (question.single) {
        isCorrect = question.answers
                .where((answer) => answer.fraction > 0)
                .first
                .text ==
            selectedAnswer.text;
      } else {
        // For multiple correct answers (not covered in the current example but should be handled)
        // Logic to compare all selected answers with correct answers
      }
    } else if (question is ShortAnswerQuestion) {
      isCorrect = question.answers.any((answer) => answer.text == selectedAnswer);
    }

    final updatedIsAnswerCorrect = Map<int, bool>.from(state.isAnswerCorrect)
      ..[questionIndex] = isCorrect;

    state = state.copyWith(isAnswerCorrect: updatedIsAnswerCorrect);
  }
}
