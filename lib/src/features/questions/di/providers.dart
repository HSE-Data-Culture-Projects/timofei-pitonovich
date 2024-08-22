import 'package:app/src/features/questions/questions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final questionsRepositoryProvider = Provider<QuestionsRepository>(
  (ref) {
    return QuestionsMockRepository();
  },
);

final questionsStateHolderProvider =
    StateNotifierProvider<QuestionsStateHolder, QuestionsState>((ref) {
  final repository = ref.watch(questionsRepositoryProvider);
  return QuestionsStateHolder(repository);
});
