import 'package:flutter/material.dart';
import 'package:ui_kit/src/color_schemas/color_schemas.dart';
import 'package:ui_kit/src/fonts/fonts.dart';


/// Расширение для [ThemeData], предоставляющее удобный и короткий доступ к
/// [ThemeExtension], находящимся внутри [ThemeData].
extension ThemeDataExtension on ThemeData {
  /// Палитра цветов текста и иконок.
  DcColorPalette get smColorScheme => extension<DcColorPalette>()!;

  DcFontsTheme get fontsTheme => extension<DcFontsTheme>()!;
}
