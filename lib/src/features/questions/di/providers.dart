import 'package:app/src/features/questions/questions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final questionsManagerProvider =
    Provider.autoDispose.family<QuestionsManager, String>((ref, id) {
  return QuestionsManager(
    ref.watch(questionsRepositoryProvider),
    ref.watch(questionsStateHolderProvider(id).notifier),
  );
});

final questionsRepositoryProvider = Provider<QuestionsRepository>(
  (ref) {
    return QuestionsMockRepository();
  },
);

final questionsStateHolderProvider =
    StateNotifierProvider.family<QuestionsStateHolder, QuestionsState, String>(
        (ref, id) {
  return QuestionsStateHolder();
});
