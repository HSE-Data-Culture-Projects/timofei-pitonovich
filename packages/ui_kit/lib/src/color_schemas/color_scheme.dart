import 'package:flutter/material.dart';

/// Color palette.
class DcColorScheme extends ThemeExtension<DcColorScheme> {
  /// Standard constructor for [DcColorScheme] specifying all colors.
  const DcColorScheme({
    required this.background,
    required this.primary,
    required this.secondary,
    required this.positive,
    required this.warning,
    required this.negative,
  });

  final Color background;
  final Color primary;
  final Color secondary;
  final Color positive;
  final Color warning;
  final Color negative;

  @override
  DcColorScheme copyWith({
    Color? background,
    Color? primary,
    Color? secondary,
    Color? positive,
    Color? warning,
    Color? negative,
  }) =>
      DcColorScheme(
        background: background ?? this.background,
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        positive: positive ?? this.positive,
        warning: warning ?? this.warning,
        negative: negative ?? this.negative,
      );

  @override
  DcColorScheme lerp(covariant DcColorScheme? other, double t) => DcColorScheme(
        background: Color.lerp(background, other?.background, t)!,
        primary: Color.lerp(primary, other?.primary, t)!,
        secondary: Color.lerp(secondary, other?.secondary, t)!,
        positive: Color.lerp(positive, other?.positive, t)!,
        warning: Color.lerp(warning, other?.warning, t)!,
        negative: Color.lerp(negative, other?.negative, t)!,
      );
}
