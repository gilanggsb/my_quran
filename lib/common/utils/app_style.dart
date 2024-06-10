import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_quran/common/common.dart';

class AppStyle {
  static TextStyle get _baseTextStyle =>
      GoogleFonts.lato(color: AppColors.primary);
  static ThemeData themeData = ThemeData(
    fontFamily: _baseTextStyle.fontFamily,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.background),
    ),
    useMaterial3: true,
    primarySwatch: AppColors.generateMaterialColor(AppColors.primary),
  );

  static TextStyle regularTextStyle({
    double? fontSize,
    FontStyle? fontStyle,
    Color? fontColor,
    double? letterSpacing,
    Paint? foreground,
  }) =>
      _baseTextStyle.copyWith(
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
      _baseTextStyle.copyWith(
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
      _baseTextStyle.copyWith(
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
      _baseTextStyle.copyWith(
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
      _baseTextStyle.copyWith(
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
