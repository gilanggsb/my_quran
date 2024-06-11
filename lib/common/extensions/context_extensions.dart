import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quran/common/common.dart';

extension ContextExt on BuildContext {
  double get getHeight => MediaQuery.of(this).size.height.sp;
  double get getWidth => MediaQuery.of(this).size.width.sp;
  ThemeData get theme => Theme.of(this);
  AppTextThemeExtension get textThemeExt => Theme.of(this).appTextTheme;
  AppColorsExtension get colorsExt => Theme.of(this).appColors;
}
