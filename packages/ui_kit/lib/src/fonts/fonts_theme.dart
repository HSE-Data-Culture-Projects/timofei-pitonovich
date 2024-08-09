import 'package:flutter/material.dart';

/// Типографика.
class DcFontsTheme extends ThemeExtension<DcFontsTheme> {
  /// Стандартный конструктор [DcFontsTheme] с указанием всех стилей текста.
  const DcFontsTheme({
    required this.dcDisplayLarge,
    required this.dcDisplayMedium,
    required this.dcDisplaySmall,
    required this.dcHeadlineLarge,
    required this.dcHeadlineMedium,
    required this.dcHeadlineSmall,
    required this.dcTitleLarge,
    required this.dcBodyLarge,
    required this.dcBodyMedium,
    required this.dcLabelLarge,
    required this.dcLabelMedium,
    required this.dcLabelSmall,
  });

  final TextStyle dcDisplayLarge;

  final TextStyle dcDisplayMedium;

  final TextStyle dcDisplaySmall;

  final TextStyle dcHeadlineLarge;

  final TextStyle dcHeadlineMedium;

  final TextStyle dcHeadlineSmall;

  final TextStyle dcTitleLarge;

  final TextStyle dcBodyLarge;

  final TextStyle dcBodyMedium;

  final TextStyle dcLabelLarge;

  final TextStyle dcLabelMedium;

  final TextStyle dcLabelSmall;

  @override
  DcFontsTheme copyWith({
    TextStyle? dcDisplayLarge,
    TextStyle? dcDisplayMedium,
    TextStyle? dcDisplaySmall,
    TextStyle? dcHeadlineLarge,
    TextStyle? dcHeadlineMedium,
    TextStyle? dcHeadlineSmall,
    TextStyle? dcTitleLarge,
    TextStyle? dcBodyLarge,
    TextStyle? dcBodyMedium,
    TextStyle? dcLabelLarge,
    TextStyle? dcLabelMedium,
    TextStyle? dcLabelSmall,
  }) =>
      DcFontsTheme(
        dcDisplayLarge: dcDisplayLarge ?? this.dcDisplayLarge,
        dcDisplayMedium: dcDisplayMedium ?? this.dcDisplayMedium,
        dcDisplaySmall: dcDisplaySmall ?? this.dcDisplaySmall,
        dcHeadlineLarge: dcHeadlineLarge ?? this.dcHeadlineLarge,
        dcHeadlineMedium: dcHeadlineMedium ?? this.dcHeadlineMedium,
        dcHeadlineSmall: dcHeadlineSmall ?? this.dcHeadlineSmall,
        dcTitleLarge: dcTitleLarge ?? this.dcTitleLarge,
        dcBodyLarge: dcBodyLarge ?? this.dcBodyLarge,
        dcBodyMedium: dcBodyMedium ?? this.dcBodyMedium,
        dcLabelLarge: dcLabelLarge ?? this.dcLabelLarge,
        dcLabelMedium: dcLabelMedium ?? this.dcLabelMedium,
        dcLabelSmall: dcLabelSmall ?? this.dcLabelSmall,
      );

  @override
  DcFontsTheme lerp(
    covariant DcFontsTheme? other,
    double t,
  ) =>
      DcFontsTheme(
        dcDisplayLarge:
            TextStyle.lerp(dcDisplayLarge, other?.dcDisplayLarge, t)!,
        dcDisplayMedium:
            TextStyle.lerp(dcDisplayMedium, other?.dcDisplayMedium, t)!,
        dcDisplaySmall:
            TextStyle.lerp(dcDisplaySmall, other?.dcDisplaySmall, t)!,
        dcHeadlineLarge:
            TextStyle.lerp(dcHeadlineLarge, other?.dcHeadlineLarge, t)!,
        dcHeadlineMedium:
            TextStyle.lerp(dcHeadlineMedium, other?.dcHeadlineMedium, t)!,
        dcHeadlineSmall:
            TextStyle.lerp(dcHeadlineSmall, other?.dcHeadlineSmall, t)!,
        dcTitleLarge: TextStyle.lerp(dcTitleLarge, other?.dcTitleLarge, t)!,
        dcBodyLarge: TextStyle.lerp(dcBodyLarge, other?.dcBodyLarge, t)!,
        dcBodyMedium: TextStyle.lerp(dcBodyMedium, other?.dcBodyMedium, t)!,
        dcLabelLarge: TextStyle.lerp(dcLabelLarge, other?.dcLabelLarge, t)!,
        dcLabelMedium: TextStyle.lerp(dcLabelMedium, other?.dcLabelMedium, t)!,
        dcLabelSmall: TextStyle.lerp(dcLabelSmall, other?.dcLabelSmall, t)!,
      );

  /// Конвертация в тему текста, родную для Flutter.
  TextTheme toTextTheme() => TextTheme(
        displayLarge: dcDisplayLarge,
        displayMedium: dcDisplayMedium,
        displaySmall: dcDisplaySmall,
        headlineLarge: dcHeadlineLarge,
        headlineMedium: dcHeadlineMedium,
        headlineSmall: dcHeadlineSmall,
        titleLarge: dcTitleLarge,
        bodyLarge: dcBodyLarge,
        bodyMedium: dcBodyMedium,
        labelLarge: dcLabelLarge,
        labelMedium: dcLabelMedium,
        labelSmall: dcLabelSmall,
      );
}
