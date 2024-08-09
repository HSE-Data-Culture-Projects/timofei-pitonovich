import 'package:flutter/material.dart';
import 'package:ui_kit/src/extensions/theme_extension.dart';
import 'package:ui_kit/src/color_schemas/color_schemas.dart';
import 'package:ui_kit/src/fonts/fonts.dart';

/// Расширение для [BuildContext], предоставляющее удобный и короткий доступ к
/// теме приложения.
extension BuildContextExtension on BuildContext {
  /// [ThemeData] в данном контексте.
  ///
  /// Аналог `Theme.of(context)`.
  ///
  /// Можно переопределить в ветке дерева виджетов через виджет [Theme].
  ///
  /// Пример использования:
  ///
  /// ```dart
  /// final errorColor = context.theme.colorScheme.error;
  /// ```
  ThemeData get theme => Theme.of(this);

  /// Палитра цветов текста и иконок.
  ///
  /// Аналог `Theme.of(context).extension<TextColorScheme>()!`.
  ///
  /// Пример использования:
  ///
  /// ```dart
  /// final errorTextColor = context.textColorScheme.negative;
  /// ```
  DcColorPalette get colorScheme => theme.smColorScheme;

  DcFontsTheme get fontsTheme => theme.fontsTheme;
}
