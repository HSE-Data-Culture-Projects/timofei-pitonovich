import 'package:app/src/features/mistakes/mistakes.dart';
import 'package:app/src/features/questions/questions.dart';
import 'package:app/src/services/storage/managers/local_storage_manager.dart';

class MistakesManager {
  final MistakesStateHolder _stateHolder;
  final MistakesState _state;
  final LocaleDatabaseManager _databaseManager;

  MistakesManager(this._stateHolder, this._state, this._databaseManager);

  Future<void> getMistakes() async {
    try {
      _stateHolder.setLoading();
      final questions = await _databaseManager.getWrongAnswerQuestions();
      _stateHolder.setLoaded(questions.toList());
    } catch (_) {
      _stateHolder.setError();
    }
  }

  Future<void> addToMistakes(Question question) =>
      _databaseManager.addQuestionToWrongAnswers(question);

  Future<void> removeFromMistakes(Question question) =>
      _databaseManager.removeQuestionFromWrongAnswers(question);
}
