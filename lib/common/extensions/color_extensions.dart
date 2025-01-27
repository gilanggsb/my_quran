import 'package:flutter/material.dart';

extension ColorExt on Color {
  String _generateAlpha({required int alpha, required bool withAlpha}) {
    if (withAlpha) {
      return alpha.toRadixString(16).padLeft(2, '0');
    } else {
      return '';
    }
  }
  String get colorHexString {
    final red = (r * 255).toInt().toRadixString(16).padLeft(2, '0');
    final green = (g * 255).toInt().toRadixString(16).padLeft(2, '0');
    final blue = (b * 255).toInt().toRadixString(16).padLeft(2, '0');
    final alpha = (a * 255).toInt().toRadixString(16).padLeft(2, '0');

    return '$alpha$red$green$blue';
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true, bool withAlpha = false}) =>
      '${leadingHashSign ? '#' : ''}'
              '${_generateAlpha(alpha: a.toInt(), withAlpha: withAlpha)}'
              '${r.toInt().toRadixString(16).padLeft(2, '0')}'
              '${g.toInt().toRadixString(16).padLeft(2, '0')}'
              '${b.toInt().toRadixString(16).padLeft(2, '0')}'
          .toUpperCase();

  MaterialColor toMaterialColor() {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    // final int r = r, g = g, b = b;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r.toInt() + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g.toInt() + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b.toInt() + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(r.toInt(), swatch);
  }
}
