import 'package:flutter/material.dart';
import 'package:ui_kit/src/color_schemas/color_schemas.dart';
import 'package:ui_kit/src/color_schemas/text_color_scheme.dart';
import 'package:ui_kit/src/fonts/fonts.dart';

/// Расширение для [ThemeData], предоставляющее удобный и короткий доступ к
/// [ThemeExtension], находящимся внутри [ThemeData].
extension ThemeDataExtension on ThemeData {
  /// Палитра цветов текста и иконок.
  DcColorScheme get dcColorScheme => extension<DcColorScheme>()!;

  DcTextColorScheme get dcTextColorScheme => extension<DcTextColorScheme>()!;

  DcFontsTheme get fontsTheme => extension<DcFontsTheme>()!;
}
