import 'package:app/src/features/exams/exams.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exams_state.freezed.dart';

@freezed
sealed class ExamsState with _$ExamsState {
  const factory ExamsState.loading() = ExamsLoadingState;

  const factory ExamsState.loaded({required List<Exam> exams}) =
      ExamsLoadedState;

  const factory ExamsState.error() = ExamsErrorState;
}
