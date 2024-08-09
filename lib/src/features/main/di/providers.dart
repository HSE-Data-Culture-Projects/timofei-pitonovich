import 'package:app/src/features/main/managers/main_manager.dart';
import 'package:app/src/services/routing/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainManagerProvider = Provider.autoDispose<MainManager>(
  (ref) => MainManager(
    ref.watch(navigationManagerProvider),
  ),
);
