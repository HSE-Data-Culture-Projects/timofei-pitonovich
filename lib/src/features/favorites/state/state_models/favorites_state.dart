import 'package:app/src/features/questions/questions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_state.freezed.dart';

@freezed
sealed class FavoritesState with _$FavoritesState {
  const factory FavoritesState.loading() = FavoritesLoadingState;

  const factory FavoritesState.loaded({
    required List<Question> favoriteQuestions,
  }) = FavoritesLoadedState;

  const factory FavoritesState.error() = FavoritesErrorState;
}
