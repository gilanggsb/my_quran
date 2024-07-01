// ignore_for_file: unused_field

import 'package:flutter/material.dart';

abstract class AppPalette {
  static const Color primary = Color(0xFFDA8856);
  static const Color primaryLight = Color(0xFFFFBF8A);
  static const Color background = Color(0xFFFFFDF5);
  static const Color darkBlue = Color(0xFF004492);
  static const Color dustBlue = Color(0xFF859ED1);
  static const Color lightRed = Color(0xFFFA9884);
  static const Color cream = Color(0xFFFFE5CA);
  static const Color lightCream = Color.fromRGBO(255, 243, 226, 1);
  // static const Color white = Color(0xFFFFFFFF);
  static const Color lightYellow = Color(0xFFFFF8E7);
  static const Color transparent = Colors.transparent;

  static const Color alert = Color(0xFFFA0000);
  static const Color green = Color(0xFF1ED761);
  static const Color blue = Color(0xFF3D73FF);
  static const Color orange = Color(0xFFF36E22);
  static const Color lightOrange = Color(0xFFFDECEC);
  static const Color secondary = Color(0xFFD0C9C0);
  static const Color accent = Color(0xFF5F7161);
  static const grey = _GreyColors();
  static const gradient = _GradientColors();
  static const black = _BlackColors();
  static const white = _WhiteColors();
}

class _GreyColors {
  const _GreyColors();
  final grey60 = const Color(0xAA292C29);
}

class _WhiteColors {
  const _WhiteColors();
  final white = const Color(0xFFFFFFFF);
  final white50 = const Color(0xAAFFFFFF);
}

class _GradientColors {
  const _GradientColors();
  final primary = const LinearGradient(colors: [
    AppPalette.primaryLight,
    AppPalette.primary,
  ],);
}

class _BlackColors {
  const _BlackColors();
  final Color black50 = const Color(0xFF454646);
  final Color black200 = const Color(0xFF454646);
}
