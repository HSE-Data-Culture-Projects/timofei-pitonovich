import 'package:app/src/features/favorites/favorites.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../questions/questions.dart';

class FavoritesStateHolder extends StateNotifier<FavoritesState> {
  FavoritesStateHolder() : super(const FavoritesState.loading());

  void setLoading() {
    if (!mounted) return;
    state = const FavoritesState.loading();
  }

  void setLoaded(List<Question> questions) {
    if (!mounted) return;
    state = FavoritesState.loaded(favoriteQuestions: questions);
  }

  void setError() {
    if (!mounted) return;
    state = const FavoritesState.error();
  }
}
