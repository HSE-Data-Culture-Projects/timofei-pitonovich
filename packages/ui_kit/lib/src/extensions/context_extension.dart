import 'package:flutter/material.dart';
import 'package:ui_kit/src/color_schemas/text_color_scheme.dart';
import 'package:ui_kit/src/extensions/theme_extension.dart';
import 'package:ui_kit/src/color_schemas/color_schemas.dart';
import 'package:ui_kit/src/fonts/fonts.dart';

/// Расширение для [BuildContext], предоставляющее удобный и короткий доступ к
/// теме приложения.
extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  DcColorScheme get colorScheme => theme.dcColorScheme;

  DcTextColorScheme get textColorScheme => theme.dcTextColorScheme;

  DcFontsTheme get fontsTheme => theme.fontsTheme;
}
