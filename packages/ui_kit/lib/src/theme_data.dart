import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_kit/src/color_schemas/color_schemas.dart';
import 'package:ui_kit/src/fonts/fonts.dart';
import 'package:ui_kit/ui_kit.dart';

/// Абстрактный помощник в получение тем, заданных в UI Kit.
abstract interface class DcThemeData {
  /// Светлая тема из UI Kit.
  static ThemeData get light {
    const textColorScheme = DcColorPalette(
      primaryWhite: Color(0xFFFFFFFF),
      primaryLightGray: Color(0xFFF1F1F8),
      primaryBlue: Color(0xFF003CFF),
      primaryBlack: Color(0xFF000000),
      secondaryDarkGray: Color(0xFF95969D),
      secondaryGray: Color(0xFFE4E4E4),
      secondaryGray1: Color(0xFFF2F5FF),
      secondaryBlue1: Color(0xFF4873FF),
      tertiaryBlack: Color.fromRGBO(0, 0, 0, 0.6),
      tertiaryBlue: Color.fromRGBO(0, 60, 255, 0.1),
      attentionCornflower: Color(0xFF30A6E9),
      attentionViolet: Color(0xFF8791ED),
      attentionMagenta: Color(0xFFAE59C6),
      attentionGreen: Color(0xFF1BD2A4),
      attentionYellow: Color(0xFFF1B031),
      attentionOrange: Color(0xFFFF6E01),
      neutralRed1: Color(0xFFFCBFBF),
      neutralBlue2: Color(0xFFB8C8FF),
      neutralCornflower1: Color(0xFFD6EDFB),
      neutralCornflower2: Color(0xFFE7F3FA),
      neutralViolet1: Color(0xFFE7E9FB),
      neutralViolet2: Color(0xFFEFF1FA),
      errorRed: Color(0xFFF42829),
    );

    final fontsTheme = DcFontsTheme(
      dcDisplayLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 96,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcDisplayMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcDisplaySmall: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcHeadlineLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcHeadlineMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcHeadlineSmall: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcTitleLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcBodyLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcBodyMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcLabelLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcLabelMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
      dcLabelSmall: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primaryBlack,
        ),
      ),
    );

    return DcThemeData._fromBase(
      _lightBaseTheme,
      colorScheme: textColorScheme,
      fontsTheme: fontsTheme,
      extensions: const [],
    );
  }

  static ThemeData _fromBase(
    ThemeData baseTheme, {
    required DcColorPalette colorScheme,
    required DcFontsTheme fontsTheme,
    List<ThemeExtension> extensions = const [],
  }) {
    return baseTheme.copyWith(
      textTheme: fontsTheme.toTextTheme(),
      colorScheme:
          baseTheme.colorScheme.copyWith(primary: colorScheme.primaryBlue),
      scrollbarTheme: ScrollbarThemeData(
        thickness: WidgetStateProperty.all(8),
        radius: const Radius.circular(100),
        thumbColor: WidgetStateProperty.all(colorScheme.neutralBlue2),
        trackBorderColor: WidgetStateProperty.all(colorScheme.neutralBlue2),
        trackColor: WidgetStateProperty.all(colorScheme.neutralBlue2),
        mainAxisMargin: 8,
      ),
      scaffoldBackgroundColor: colorScheme.primaryLightGray,
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: fontsTheme.dcLabelSmall.copyWith(
          color: colorScheme.primaryBlack,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        menuStyle: MenuStyle(
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          side: WidgetStatePropertyAll(
            BorderSide(color: colorScheme.primaryBlue),
          ),
          backgroundColor: WidgetStatePropertyAll<Color>(
            colorScheme.primaryWhite,
          ),
        ),
      ),
      extensions: [
        colorScheme,
        fontsTheme,
        ...extensions,
      ],
    );
  }

  static final ThemeData _lightBaseTheme = ThemeData.light();
}
