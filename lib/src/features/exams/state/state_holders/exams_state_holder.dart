import 'package:app/src/features/exams/exams.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExamsStateHolder extends StateNotifier<ExamsState> {
  ExamsStateHolder() : super(ExamsState.loading());

  void setLoading() {
    if (!mounted) return;
    state = ExamsState.loading();
  }

  void setLoaded(List<Exam> exams) {
    if (!mounted) return;
    state = ExamsState.loaded(exams: exams);
  }

  void setError() {
    if (!mounted) return;
    state = ExamsState.error();
  }
}
