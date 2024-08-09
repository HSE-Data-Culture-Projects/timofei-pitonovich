import 'package:app/src/features/main/ui/main_page.dart';
import 'package:app/src/features/settings/ui/settings_page.dart';
import 'package:app/src/services/routing/routing.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routesProvider = Provider<List<RouteBase>>(
  (ref) {
    final navigatorKey = ref.watch(navigatorKeyProvider);
    return <RouteBase>[
      GoRoute(
        parentNavigatorKey: navigatorKey,
        path: '/',
        builder: (context, state) => const MainPage(),
        routes: [
          GoRoute(
            parentNavigatorKey: navigatorKey,
            path: 'settings',
            builder: (context, state) => const SettingsPage(),
          ),
        ],
      ),
    ];
  },
);
