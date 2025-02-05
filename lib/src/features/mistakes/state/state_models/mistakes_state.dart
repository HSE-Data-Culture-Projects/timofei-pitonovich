import 'package:app/src/features/questions/questions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mistakes_state.freezed.dart';

@freezed
sealed class MistakesState with _$MistakesState {
  const factory MistakesState.loading() = MistakesLoadingState;

  const factory MistakesState.loaded({
    required List<Question> mistakeQuestions,
  }) = MistakesLoadedState;

  const factory MistakesState.error() = MistakesErrorState;
}
