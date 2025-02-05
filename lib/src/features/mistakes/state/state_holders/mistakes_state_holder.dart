import 'package:app/src/features/mistakes/mistakes.dart';
import 'package:app/src/features/questions/questions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MistakesStateHolder extends StateNotifier<MistakesState> {
  MistakesStateHolder() : super(const MistakesState.loading());

  void setLoading() {
    if (!mounted) return;
    state = const MistakesState.loading();
  }

  void setLoaded(List<Question> questions) {
    if (!mounted) return;
    state = MistakesState.loaded(mistakeQuestions: questions);
  }

  void setError() {
    if (!mounted) return;
    state = const MistakesState.error();
  }
}
