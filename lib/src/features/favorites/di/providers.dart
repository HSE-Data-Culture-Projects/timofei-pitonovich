import 'package:app/src/features/favorites/favorites.dart';
import 'package:app/src/services/storage/di/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoritesManagerProvider = Provider.autoDispose<FavoritesManager>(
  (ref) => FavoritesManager(
    ref.watch(favoritesStateHolderProvider.notifier),
    ref.watch(favoritesStateHolderProvider),
    ref.watch(localStorageManagerProvider),
  ),
);

final favoritesStateHolderProvider =
    StateNotifierProvider.autoDispose<FavoritesStateHolder, FavoritesState>(
  (ref) => FavoritesStateHolder(),
);
