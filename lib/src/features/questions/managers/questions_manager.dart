import 'package:app/src/features/questions/questions.dart';
import 'package:app/src/services/routing/routing.dart';
import 'package:flutter/cupertino.dart';

class QuestionsManager {
  final NavigationManager _navigationManager;
  final QuestionsRepository _questionsRepository;
  final QuestionsStateHolder _stateHolder;
  final QuestionsState _state;
  final PageController _pageController;

  QuestionsManager(
    this._navigationManager,
    this._questionsRepository,
    this._stateHolder,
    this._state,
    this._pageController,
  );

  Future<void> getQuestions(String topicId, {bool updateState = true}) async {
    try {
      if (!updateState) return;
      final questions = await _questionsRepository.getQuestionsByTopicId(
        topicId,
      );
      _stateHolder.clear();
      _stateHolder.setQuestions(questions);
    } catch (e) {
      debugPrint('$e');
    }
  }

  void selectAnswer(int questionIndex, dynamic answer) {
    final updatedSelectedAnswers =
        Map<int, dynamic>.from(_state.selectedAnswers)
          ..[questionIndex] = answer;
    _stateHolder.selectAnswer(updatedSelectedAnswers);
  }

  Future<void> checkAnswer(int questionIndex) async {
    final question = _state.questions[questionIndex];
    final selectedAnswer = _state.selectedAnswers[questionIndex];

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
      isCorrect = question.answers.any(
        (answer) => answer.text == selectedAnswer,
      );
    }

    if (isCorrect) {
      _navigationManager.showSnackBar(
        text: 'Верно!',
        correct: true,
      );
      await Future.delayed(const Duration(milliseconds: 500));
      if (_stateHolder.questionsCount == questionIndex + 1) {
        _navigationManager.showAlertDialog(
          contentText: 'Вопросы закончились! Хотите завершить тему или еще раз '
              'просмотреть вопросы?',
          onConfirm: () {
            _navigationManager.pop();
            _navigationManager.pop();
          },
        );
      } else {
        _pageController.animateToPage(
          questionIndex + 1,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    } else {
      _navigationManager.showSnackBar(
        text: 'Ответ неверный! Попробуйте ещё раз!',
        error: true,
        duration: const Duration(seconds: 2),
      );
    }

    final updatedIsAnswerCorrect = Map<int, bool>.from(_state.isAnswerCorrect)
      ..[questionIndex] = isCorrect;

    _stateHolder.setAnswersCorrectness(updatedIsAnswerCorrect);
  }
}
