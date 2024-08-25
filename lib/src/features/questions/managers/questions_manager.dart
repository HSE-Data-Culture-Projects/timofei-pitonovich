import 'package:app/src/features/questions/questions.dart';
import 'package:flutter/cupertino.dart';

class QuestionsManager {
  final QuestionsRepository _questionsRepository;
  final QuestionsStateHolder _stateHolder;

  QuestionsManager(
    this._questionsRepository,
    this._stateHolder,
  );

  Future<void> getQuestions(String topicId, {bool updateState = true}) async {
    try {
      if (!updateState) return;
      final questions = _questionsRepository.getQuestionsByTopicId(
        topicId,
      );
      _stateHolder.clear();
      _stateHolder.setQuestions(questions);
    } catch (e) {
      debugPrint('$e');
    }
  }
}
