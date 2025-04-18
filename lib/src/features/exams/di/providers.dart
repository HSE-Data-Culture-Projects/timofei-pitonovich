import 'package:app/src/features/exams/exams.dart';
import 'package:app/src/services/network/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final examsManagerProvider = Provider.autoDispose<ExamsManager>(
  (ref) => ExamsManager(
    ref.watch(examsRepositoryProvider),
    ref.watch(examsStateHolderProvider.notifier),
  ),
);

final examsRepositoryProvider = Provider.autoDispose<ExamsRepository>(
  (ref) => ExamsRepositoryImpl(ref.watch(examsServiceProvider)),
);

final examsServiceProvider = Provider.autoDispose<ExamsService>(
  (ref) => ExamsRemoteService(
    ref.watch(dioProvider),
  ),
);

final examsStateHolderProvider =
    StateNotifierProvider<ExamsStateHolder, ExamsState>(
  (ref) => ExamsStateHolder(),
);

final currentExamProvider = StateProvider<String?>((ref) => null);
