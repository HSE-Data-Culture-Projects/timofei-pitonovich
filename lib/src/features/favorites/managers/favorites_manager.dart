import 'package:app/src/features/favorites/favorites.dart';
import 'package:app/src/services/storage/managers/local_storage_manager.dart';

import '../../questions/questions.dart';

class FavoritesManager {
  final FavoritesStateHolder _stateHolder;
  final FavoritesState _state;
  final LocaleDatabaseManager _databaseManager;

  FavoritesManager(this._stateHolder, this._state, this._databaseManager);

  Future<void> getFavorites() async {
    try {
      _stateHolder.setLoading();
      final questions = await _databaseManager.getFavoriteQuestions();
      _stateHolder.setLoaded(questions);
    } catch (_) {
      _stateHolder.setError();
    }
  }

  Future<void> addToFavorites(Question question) =>
      _databaseManager.addQuestionToFavorites(question);

  Future<void> removeFromFavorites(Question question) =>
      _databaseManager.removeQuestionFromFavorites(question);
}
