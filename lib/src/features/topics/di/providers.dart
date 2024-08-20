import 'package:app/src/features/topics/topics.dart';
import 'package:app/src/services/network/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final topicsManagerProvider = Provider.autoDispose<TopicsManager>(
  (ref) => TopicsManager(
    ref.watch(topicsRepositoryProvider),
    ref.watch(topicsStateHolderProvider.notifier),
  ),
);

final topicsRepositoryProvider = Provider.autoDispose<TopicsRepository>(
  (ref) => TopicsRepositoryImpl(ref.watch(topicsServiceProvider)),
);

final topicsServiceProvider = Provider.autoDispose<TopicsService>(
  (ref) => TopicsRemoteService(
    ref.watch(dioProvider),
  ),
);

final topicsStateHolderProvider =
    StateNotifierProvider<TopicsStateHolder, TopicsState>(
  (ref) => TopicsStateHolder(),
);
