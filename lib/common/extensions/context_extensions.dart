import 'package:flutter/material.dart';

import '../common.dart';

extension ContextExt on BuildContext {
  AppColorsExtension get colorsExt => theme.appColors;
  AppTextThemeExtension get textThemeExt => theme.appTextTheme;
  ThemeData get theme => Theme.of(this);

  double get getHeight => MediaQuery.of(this).size.height.h;
  double get getWidth => MediaQuery.of(this).size.width.w;

  bool get isLightTheme => theme.brightness == Brightness.light;
  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom != 0;
  void unFocus() => FocusScope.of(this).unfocus();
  void hideKeyboard() => FocusManager.instance.primaryFocus?.unfocus();
  Color? getColorExt(AppColorType type) => colorsExt.getColor(type);

  // New properties
  bool get isPortrait => MediaQuery.of(this).orientation == Orientation.portrait;
  bool get isLandscape => MediaQuery.of(this).orientation == Orientation.landscape;

  bool get isMobile => getWidth < 600;
  bool get isTablet => getWidth >= 600 && getWidth < 1024;
  bool get isDesktop => getWidth >= 1024;
}
