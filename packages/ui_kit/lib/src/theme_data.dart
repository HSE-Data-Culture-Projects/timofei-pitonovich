import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_kit/src/color_schemas/color_schemas.dart';
import 'package:ui_kit/src/color_schemas/text_color_scheme.dart';
import 'package:ui_kit/src/fonts/fonts.dart';
import 'package:ui_kit/ui_kit.dart';

/// Абстрактный помощник в получение тем, заданных в UI Kit.
abstract interface class DcThemeData {
  /// Светлая тема из UI Kit.
  static ThemeData get light {
    const textColorScheme = DcTextColorScheme(
      primary: Color(0xFF292D34),
      secondary: Color(0xFF2300FA),
      contrast: Color(0xFFFFFFFF),
      positive: Color(0xFF46B952),
      warning: Color(0xFFFFD12D),
      negative: Color(0xFFFF5741),
    );

    const colorScheme = DcColorScheme(
      primary: Color(0xFF2300FA),
      background: Color(0xFFFFFFFF),
      secondary: Color(0xFFCCD8FF),
      positive: Color(0xFF46B952),
      warning: Color(0xFFFFD12D),
      negative: Color(0xFFFF5741),
    );

    final fontsTheme = DcFontsTheme(
      dcDisplayLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 96,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcDisplayMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcDisplaySmall: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcHeadlineLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcHeadlineMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcHeadlineSmall: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcTitleLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcBodyLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcBodyMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcLabelLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcLabelMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcLabelSmall: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
    );

    return DcThemeData._fromBase(
      _lightBaseTheme,
      textColorScheme: textColorScheme,
      colorScheme: colorScheme,
      fontsTheme: fontsTheme,
      extensions: const [],
    );
  }

  static ThemeData _fromBase(
    ThemeData baseTheme, {
    required DcTextColorScheme textColorScheme,
    required DcColorScheme colorScheme,
    required DcFontsTheme fontsTheme,
    List<ThemeExtension> extensions = const [],
  }) {
    return baseTheme.copyWith(
      textTheme: fontsTheme.toTextTheme(),
      colorScheme: baseTheme.colorScheme.copyWith(primary: colorScheme.primary),
      scaffoldBackgroundColor: colorScheme.background,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: fontsTheme.dcLabelSmall.copyWith(
          color: colorScheme.primary,
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
            BorderSide(color: colorScheme.primary),
          ),
          backgroundColor: WidgetStatePropertyAll<Color>(
            colorScheme.background,
          ),
        ),
      ),
      extensions: [
        textColorScheme,
        colorScheme,
        fontsTheme,
        ...extensions,
      ],
    );
  }

  static ThemeData get dark {
    const textColorScheme = DcTextColorScheme(
      primary: Color(0xFFFFFFFF),
      secondary: Color(0xFFDCFF05),
      contrast: Color(0xFF2C2C2C),
      positive: Color(0xFF46B952),
      warning: Color(0xFFFFD12D),
      negative: Color(0xFFFF5741),
    );

    const colorScheme = DcColorScheme(
      primary: Color(0xFFDCFF05),
      background: Color(0xFF2C2C2C),
      secondary: Color(0xFF444444),
      positive: Color(0xFF46B952),
      warning: Color(0xFFFFD12D),
      negative: Color(0xFFFF5741),
    );

    final fontsTheme = DcFontsTheme(
      dcDisplayLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 96,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcDisplayMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcDisplaySmall: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcHeadlineLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcHeadlineMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcHeadlineSmall: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcTitleLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcBodyLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcBodyMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcLabelLarge: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcLabelMedium: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
      dcLabelSmall: GoogleFonts.nunitoSans(
        textStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          height: 1.2,
          color: textColorScheme.primary,
        ),
      ),
    );

    return DcThemeData._fromBase(
      _darkBaseTheme,
      textColorScheme: textColorScheme,
      colorScheme: colorScheme,
      fontsTheme: fontsTheme,
      extensions: const [],
    );
  }

  static final ThemeData _lightBaseTheme = ThemeData.light();

  static final ThemeData _darkBaseTheme = ThemeData.dark();
}
