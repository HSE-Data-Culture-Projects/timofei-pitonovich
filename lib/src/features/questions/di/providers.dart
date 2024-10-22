import 'package:app/src/features/questions/questions.dart';
import 'package:app/src/features/questions/services/gigachat_service.dart';
import 'package:app/src/features/questions/services/services.dart';
import 'package:app/src/services/network/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final questionsManagerProvider =
    Provider.autoDispose.family<QuestionsManager, String>((ref, id) {
  return QuestionsManager(
    ref.watch(questionsRepositoryProvider),
    ref.watch(questionsStateHolderProvider(id).notifier),
  );
});

final questionsRepositoryProvider = Provider<QuestionsRepository>((ref) {
  return QuestionsRepositoryImpl(ref.watch(questionsServiceProvider));
});

final questionsServiceProvider = Provider<QuestionsService>((ref) {
  return QuestionsRemoteService(ref.watch(dioProvider));
});

final questionsStateHolderProvider =
    StateNotifierProvider.family<QuestionsStateHolder, QuestionsState, String>(
        (ref, id) {
  return QuestionsStateHolder();
});

final gigaChatServiceProvider = Provider<GigaChatService>((ref) {
  return GigaChatService(
    dio: ref.watch(dioProvider),
  );
});
