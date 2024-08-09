import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationManager {
  const NavigationManager(
    this._goRouter,
    this._navigatorKey,
  );

  final GoRouter _goRouter;
  final GlobalKey<NavigatorState> _navigatorKey;

  // ignore: unused_element
  BuildContext get _navigatorContext => _navigatorKey.currentContext!;

  void go(String location, {Object? extra}) {
    _goRouter.go(location, extra: extra);
  }

  Future<T?> push<T extends Object?>(String location, {Object? extra}) =>
      _goRouter.push(location, extra: extra);

  void mayBePop<T extends Object?>([T? result]) {
    if (_goRouter.canPop()) {
      _goRouter.pop(result);
    }
  }

  void pop<T extends Object?>([T? result]) {
    _goRouter.pop(result);
  }
}
