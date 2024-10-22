import 'package:app/src/features/exams/di/providers.dart';
import 'package:app/src/features/main/managers/main_manager.dart';
import 'package:app/src/services/routing/providers.dart';
import 'package:app/src/services/storage/di/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainManagerProvider = Provider.autoDispose<MainManager>(
  (ref) => MainManager(
    ref.watch(navigationManagerProvider),
    ref.watch(sharedPreferencesProvider),
    ref.watch(examsStateHolderProvider),
  ),
);

final statisticsProvider =
    FutureProvider.autoDispose<Map<String, int>>((ref) async {
  ref.keepAlive();
  final statistics = await ref.watch(mainManagerProvider).getStatistics();
  return statistics;
});
