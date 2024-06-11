import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran/common/common.dart';

class AppStyle {
  static final textTheme = _TextTheme();

  static final ThemeData _theme = ThemeData(
    fontFamily: _TextTheme.baseTextStyle.fontFamily,
    scaffoldBackgroundColor: AppPalette.background,
    useMaterial3: true,
    primarySwatch: AppPalette.primary.toMaterialColor(),
  );

  static ThemeData lightTheme = _theme.copyWith(
    brightness: Brightness.light,
    extensions: [
      lightAppColors,
      textTheme.lightTextTheme,
    ],
  );

  static ThemeData darkTheme = _theme.copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppPalette.black.black50,
    extensions: [
      darkAppColors,
      textTheme.darkTextTheme,
    ],
  );

  static final lightAppColors = AppColorsExtension(
    primary: AppPalette.primary,
    primaryLight: AppPalette.primaryLight,
    background: AppPalette.background,
    text: AppPalette.primary,
  );

  static final darkAppColors = AppColorsExtension(
    primary: AppPalette.primary,
    primaryLight: AppPalette.primaryLight,
    background: AppPalette.black.black50,
    text: AppPalette.white,
  );

  static TextStyle regularTextStyle({
    double? fontSize,
    FontStyle? fontStyle,
    Color? fontColor,
    double? letterSpacing,
    Paint? foreground,
  }) =>
      _TextTheme.baseTextStyle.copyWith(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        fontStyle: fontStyle,
        foreground: foreground,
        color: fontColor,
        letterSpacing: letterSpacing ?? 0.5,
      );

  static TextStyle mediumTextStyle({
    double? fontSize,
    FontStyle? fontStyle,
    Color? fontColor,
    double? letterSpacing,
    Paint? foreground,
  }) =>
      _TextTheme.baseTextStyle.copyWith(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        fontStyle: fontStyle,
        color: fontColor,
        letterSpacing: letterSpacing ?? 0.5,
        foreground: foreground,
      );

  static TextStyle semiBoldTextStyle({
    double? fontSize,
    FontStyle? fontStyle,
    Color? fontColor,
    double? letterSpacing,
    Paint? foreground,
  }) =>
      _TextTheme.baseTextStyle.copyWith(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        fontStyle: fontStyle,
        color: fontColor,
        letterSpacing: letterSpacing ?? 0.5,
        foreground: foreground,
      );

  static TextStyle boldTextStyle({
    double? fontSize,
    FontStyle? fontStyle,
    Color? fontColor,
    double? letterSpacing,
    Paint? foreground,
  }) =>
      _TextTheme.baseTextStyle.copyWith(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        fontStyle: fontStyle,
        color: fontColor,
        letterSpacing: letterSpacing ?? 0.5,
        foreground: foreground,
      );

  static TextStyle thinTextStyle({
    double? fontSize,
    FontStyle? fontStyle,
    Color? fontColor,
    double? letterSpacing,
    Paint? foreground,
  }) =>
      _TextTheme.baseTextStyle.copyWith(
        fontSize: fontSize,
        fontWeight: FontWeight.w100,
        color: fontColor,
        letterSpacing: letterSpacing ?? 0.5,
        fontStyle: fontStyle,
        foreground: foreground,
      );

  static EdgeInsets get baseMarginPadding8 => const EdgeInsets.all(8);
  static EdgeInsets get baseMarginPadding12 => const EdgeInsets.all(12);
  static EdgeInsets get baseMarginPadding14 => const EdgeInsets.all(14);
  static EdgeInsets get baseMarginPadding16 => const EdgeInsets.all(16);
}

class _TextTheme {
  _TextTheme();

  static TextStyle get baseTextStyle =>
      GoogleFonts.poppins(color: AppPalette.primary);

  final AppTextThemeExtension lightTextTheme = AppTextThemeExtension(
    displayLarge: baseTextStyle.copyWith(
      fontSize: 57.0,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: baseTextStyle.copyWith(
      fontSize: 45.0,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: baseTextStyle.copyWith(
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: baseTextStyle.copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: baseTextStyle.copyWith(
      fontSize: 28.0,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: baseTextStyle.copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
    ),
    titleLarge: baseTextStyle.copyWith(
      fontSize: 22.0,
      fontWeight: FontWeight.normal,
    ),
    titleMedium: baseTextStyle.copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: baseTextStyle.copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    bodyLarge: baseTextStyle.copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: baseTextStyle.copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: baseTextStyle.copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: baseTextStyle.copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: baseTextStyle.copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    labelSmall: baseTextStyle.copyWith(
      fontSize: 11.0,
      fontWeight: FontWeight.normal,
    ),
  );

  final AppTextThemeExtension darkTextTheme = AppTextThemeExtension(
    displayLarge: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 57.0,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 45.0,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 28.0,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
    ),
    titleLarge: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 22.0,
      fontWeight: FontWeight.normal,
    ),
    titleMedium: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    bodyLarge: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    labelSmall: baseTextStyle.copyWith(
      color: AppPalette.white,
      fontSize: 11.0,
      fontWeight: FontWeight.normal,
    ),
  );
}
