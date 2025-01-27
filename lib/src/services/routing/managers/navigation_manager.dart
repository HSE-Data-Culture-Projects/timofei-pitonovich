import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';

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

  void showAlertDialog({
    required String contentText,
    String? confirmText,
    VoidCallback? onConfirm,
    String? cancelText,
  }) {
    showDialog(
      context: _navigatorContext,
      builder: (context) {
        return AlertDialog(
          content: Text(
            contentText,
            style: context.fontsTheme.dcHeadlineMedium,
          ),
          backgroundColor: context.colorScheme.background,
          contentPadding: const EdgeInsets.symmetric(horizontal: 32) +
              const EdgeInsets.only(top: 24),
          actionsPadding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 8,
          ),
          actions: [
            TextButton(
              onPressed: pop,
              child: Text(
                cancelText ?? 'Нет',
                style: context.fontsTheme.dcBodyLarge.copyWith(
                  color: context.textColorScheme.negative,
                ),
              ),
            ),
            TextButton(
              onPressed: onConfirm ?? pop,
              child: Text(
                cancelText ?? 'Да',
                style: context.fontsTheme.dcBodyLarge.copyWith(
                  color: context.textColorScheme.secondary,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void showSnackBar({
    required String text,
    bool error = false,
    bool correct = false,
    Color? color,
    Color? textColor,
    Duration? duration,
  }) {
    ScaffoldMessenger.of(_navigatorContext).showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        duration: duration ?? const Duration(seconds: 1),
        content: Container(
          decoration: BoxDecoration(
            color: correct
                ? _navigatorContext.colorScheme.positive
                : error
                    ? _navigatorContext.colorScheme.negative
                    : color ?? _navigatorContext.colorScheme.secondary,
            borderRadius: BorderRadius.circular(16),
          ),
          height: 50,
          width: MediaQuery.sizeOf(_navigatorContext).width - 32,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Center(
            child: Text(
              text,
              style: _navigatorContext.fontsTheme.dcBodyMedium.copyWith(
                color: error || correct
                    ? _navigatorContext.textColorScheme.contrast
                    : _navigatorContext.textColorScheme.secondary,
              ),
            ),
          ),
        ),
      ),
      snackBarAnimationStyle: AnimationStyle(
        curve: Curves.easeInCirc,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }
}
