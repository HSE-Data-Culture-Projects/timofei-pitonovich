import 'package:app/src/services/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final navigatorKeyProvider =
    Provider<GlobalKey<NavigatorState>>((ref) => GlobalKey<NavigatorState>());

final navigationManagerProvider = Provider<NavigationManager>(
  (ref) => NavigationManager(
    ref.watch(routerProvider),
    ref.watch(navigatorKeyProvider),
  ),
);

final routerProvider = Provider<GoRouter>(
  (ref) {
    final navigatorKey = ref.watch(navigatorKeyProvider);
    return GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: '/',
      errorBuilder: (context, state) {
        // ignore: use_build_context_synchronously
        Future.microtask(() => context.go('/'));
        return const LoadingWidget();
      },
      routes: ref.watch(routesProvider),
    );
  },
);
