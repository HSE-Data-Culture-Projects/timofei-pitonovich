import 'package:app/src/features/questions/questions.dart';
import 'package:app/src/features/questions/services/gigachat_service.dart';
import 'package:app/src/features/questions/services/services.dart';
import 'package:app/src/services/network/dio.dart';
import 'package:app/src/services/routing/providers.dart';
import 'package:app/src/services/storage/di/providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final questionsManagerProvider =
    Provider.autoDispose.family<QuestionsManager, String>((ref, id) {
  return QuestionsManager(
    ref.watch(navigationManagerProvider),
    ref.watch(questionsRepositoryProvider),
    ref.watch(questionsStateHolderProvider(id).notifier),
    ref.watch(questionsStateHolderProvider(id)),
    ref.watch(questionsPageControllerProvider),
    ref.watch(localStorageManagerProvider),
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

final questionsPageControllerProvider = Provider.autoDispose<PageController>(
  (ref) => PageController(),
);

final gigaChatServiceProvider = Provider<GigaChatService>((ref) {
  return GigaChatService(
    dio: ref.watch(dioProvider),
  );
});
