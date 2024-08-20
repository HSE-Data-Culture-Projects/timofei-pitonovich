import 'package:app/src/features/exams/exams.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exams_state.freezed.dart';

@freezed
sealed class ExamsState with _$ExamsState {
  factory ExamsState.loading() = ExamsLoadingState;

  factory ExamsState.loaded({required List<Exam> exams}) = ExamsLoadedState;

  factory ExamsState.error() = ExamsErrorState;
}
