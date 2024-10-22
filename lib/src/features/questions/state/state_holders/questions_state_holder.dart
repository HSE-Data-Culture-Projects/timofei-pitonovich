import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/src/features/questions/questions.dart';

class QuestionsStateHolder extends StateNotifier<QuestionsState> {
  QuestionsStateHolder()
      : super(
          QuestionsState.initial(<Question>[]),
        );

  void clear() => state = QuestionsState.initial(<Question>[]);

  void setQuestions(List<Question> questions) {
    state = state.copyWith(questions: questions);
  }

  void selectAnswer(int questionIndex, dynamic answer) {
    final updatedSelectedAnswers = Map<int, dynamic>.from(state.selectedAnswers)
      ..[questionIndex] = answer;

    state = state.copyWith(selectedAnswers: updatedSelectedAnswers);
  }

  void checkAnswer(int questionIndex, PageController controller) {
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
      isCorrect =
          question.answers.any((answer) => answer.text == selectedAnswer);
    }

    if (isCorrect) {
      controller.animateToPage(
        questionIndex + 1,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }

    final updatedIsAnswerCorrect = Map<int, bool>.from(state.isAnswerCorrect)
      ..[questionIndex] = isCorrect;

    state = state.copyWith(isAnswerCorrect: updatedIsAnswerCorrect);
  }
}
