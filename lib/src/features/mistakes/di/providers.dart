import 'package:app/src/services/storage/di/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../mistakes.dart';

final mistakesManagerProvider = Provider.autoDispose(
  (ref) => MistakesManager(
    ref.watch(mistakesStateHolderProvider.notifier),
    ref.watch(mistakesStateHolderProvider),
    ref.watch(localStorageManagerProvider),
  ),
);

final mistakesStateHolderProvider =
    StateNotifierProvider.autoDispose<MistakesStateHolder, MistakesState>(
  (ref) => MistakesStateHolder(),
);
