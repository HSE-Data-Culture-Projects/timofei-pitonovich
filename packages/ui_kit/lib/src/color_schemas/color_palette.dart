import 'package:flutter/material.dart';

/// Палитра цветов.
class DcColorPalette extends ThemeExtension<DcColorPalette> {
  /// Стандартный конструктор [DcColorPalette] с указанием всех цветов.
  const DcColorPalette({
    required this.primaryWhite,
    required this.primaryLightGray,
    required this.primaryBlue,
    required this.primaryBlack,
    required this.secondaryDarkGray,
    required this.secondaryGray,
    required this.secondaryGray1,
    required this.secondaryBlue1,
    required this.tertiaryBlack,
    required this.tertiaryBlue,
    required this.attentionCornflower,
    required this.attentionViolet,
    required this.attentionMagenta,
    required this.attentionGreen,
    required this.attentionYellow,
    required this.attentionOrange,
    required this.neutralRed1,
    required this.neutralBlue2,
    required this.neutralCornflower1,
    required this.neutralCornflower2,
    required this.neutralViolet1,
    required this.neutralViolet2,
    required this.errorRed,
  });

  final Color primaryWhite;
  final Color primaryLightGray;
  final Color primaryBlue;
  final Color primaryBlack;
  final Color secondaryDarkGray;
  final Color secondaryGray;
  final Color secondaryGray1;
  final Color secondaryBlue1;
  final Color tertiaryBlack;
  final Color tertiaryBlue;
  final Color attentionCornflower;
  final Color attentionViolet;
  final Color attentionMagenta;
  final Color attentionGreen;
  final Color attentionYellow;
  final Color attentionOrange;
  final Color neutralRed1;
  final Color neutralBlue2;
  final Color neutralCornflower1;
  final Color neutralCornflower2;
  final Color neutralViolet1;
  final Color neutralViolet2;
  final Color errorRed;

  @override
  DcColorPalette copyWith({
    Color? primaryWhite,
    Color? primaryLightGray,
    Color? primaryBlue,
    Color? primaryBlack,
    Color? secondaryDarkGray,
    Color? secondaryGray,
    Color? secondaryGray1,
    Color? secondaryBlue1,
    Color? tertiaryBlack,
    Color? tertiaryBlue,
    Color? attentionCornflower,
    Color? attentionViolet,
    Color? attentionMagenta,
    Color? attentionGreen,
    Color? attentionYellow,
    Color? attentionOrange,
    Color? neutralRed1,
    Color? neutralBlue2,
    Color? neutralCornflower1,
    Color? neutralCornflower2,
    Color? neutralViolet1,
    Color? neutralViolet2,
    Color? errorRed,
  }) =>
      DcColorPalette(
        primaryWhite: primaryWhite ?? this.primaryWhite,
        primaryLightGray: primaryLightGray ?? this.primaryLightGray,
        primaryBlue: primaryBlue ?? this.primaryBlue,
        primaryBlack: primaryBlack ?? this.primaryBlack,
        secondaryDarkGray: secondaryDarkGray ?? this.secondaryDarkGray,
        secondaryGray: secondaryGray ?? this.secondaryGray,
        secondaryGray1: secondaryGray1 ?? this.secondaryGray1,
        secondaryBlue1: secondaryBlue1 ?? this.secondaryBlue1,
        tertiaryBlack: tertiaryBlack ?? this.tertiaryBlack,
        tertiaryBlue: tertiaryBlue ?? this.tertiaryBlue,
        attentionCornflower: attentionCornflower ?? this.attentionCornflower,
        attentionViolet: attentionViolet ?? this.attentionViolet,
        attentionMagenta: attentionMagenta ?? this.attentionMagenta,
        attentionGreen: attentionGreen ?? this.attentionGreen,
        attentionYellow: attentionYellow ?? this.attentionYellow,
        attentionOrange: attentionOrange ?? this.attentionOrange,
        neutralRed1: neutralRed1 ?? this.neutralRed1,
        neutralBlue2: neutralBlue2 ?? this.neutralBlue2,
        neutralCornflower1: neutralCornflower1 ?? this.neutralCornflower1,
        neutralCornflower2: neutralCornflower2 ?? this.neutralCornflower2,
        neutralViolet1: neutralViolet1 ?? this.neutralViolet1,
        neutralViolet2: neutralViolet2 ?? this.neutralViolet2,
        errorRed: errorRed ?? this.errorRed,
      );

  @override
  DcColorPalette lerp(covariant DcColorPalette? other, double t) =>
      DcColorPalette(
        primaryWhite: Color.lerp(primaryWhite, other?.primaryWhite, t)!,
        primaryLightGray:
            Color.lerp(primaryLightGray, other?.primaryLightGray, t)!,
        primaryBlue: Color.lerp(primaryBlue, other?.primaryBlue, t)!,
        primaryBlack: Color.lerp(primaryBlack, other?.primaryBlack, t)!,
        secondaryDarkGray:
            Color.lerp(secondaryDarkGray, other?.secondaryDarkGray, t)!,
        secondaryGray: Color.lerp(secondaryGray, other?.secondaryGray, t)!,
        secondaryGray1: Color.lerp(secondaryGray1, other?.secondaryGray1, t)!,
        secondaryBlue1: Color.lerp(secondaryBlue1, other?.secondaryBlue1, t)!,
        tertiaryBlack: Color.lerp(tertiaryBlack, other?.tertiaryBlack, t)!,
        tertiaryBlue: Color.lerp(tertiaryBlue, other?.tertiaryBlue, t)!,
        attentionCornflower:
            Color.lerp(attentionCornflower, other?.attentionCornflower, t)!,
        attentionViolet:
            Color.lerp(attentionViolet, other?.attentionViolet, t)!,
        attentionMagenta:
            Color.lerp(attentionMagenta, other?.attentionMagenta, t)!,
        attentionGreen: Color.lerp(attentionGreen, other?.attentionGreen, t)!,
        attentionYellow:
            Color.lerp(attentionYellow, other?.attentionYellow, t)!,
        attentionOrange:
            Color.lerp(attentionOrange, other?.attentionOrange, t)!,
        neutralRed1: Color.lerp(neutralRed1, other?.neutralRed1, t)!,
        neutralBlue2: Color.lerp(neutralBlue2, other?.neutralBlue2, t)!,
        neutralCornflower1:
            Color.lerp(neutralCornflower1, other?.neutralCornflower1, t)!,
        neutralCornflower2:
            Color.lerp(neutralCornflower2, other?.neutralCornflower2, t)!,
        neutralViolet1: Color.lerp(neutralViolet1, other?.neutralViolet1, t)!,
        neutralViolet2: Color.lerp(neutralViolet2, other?.neutralViolet2, t)!,
        errorRed: Color.lerp(errorRed, other?.errorRed, t)!,
      );
}
