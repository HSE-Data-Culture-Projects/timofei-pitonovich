import 'package:flutter/material.dart';

/// Text color palette.
class DcTextColorScheme extends ThemeExtension<DcTextColorScheme> {
  /// Standard constructor for [DcTextColorScheme] specifying all colors.
  const DcTextColorScheme({
    required this.primary,
    required this.secondary,
    required this.contrast,
    required this.positive,
    required this.warning,
    required this.negative,
  });

  final Color primary;
  final Color secondary;
  final Color contrast;
  final Color positive;
  final Color warning;
  final Color negative;

  @override
  DcTextColorScheme copyWith({
    Color? primary,
    Color? secondary,
    Color? contrast,
    Color? positive,
    Color? warning,
    Color? negative,
  }) =>
      DcTextColorScheme(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        contrast: contrast ?? this.contrast,
        positive: positive ?? this.positive,
        warning: warning ?? this.warning,
        negative: negative ?? this.negative,
      );

  @override
  DcTextColorScheme lerp(covariant DcTextColorScheme? other, double t) =>
      DcTextColorScheme(
        primary: Color.lerp(primary, other?.primary, t)!,
        secondary: Color.lerp(secondary, other?.secondary, t)!,
        contrast: Color.lerp(contrast, other?.contrast, t)!,
        positive: Color.lerp(positive, other?.positive, t)!,
        warning: Color.lerp(warning, other?.warning, t)!,
        negative: Color.lerp(negative, other?.negative, t)!,
      );
}
