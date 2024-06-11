import 'package:flutter/material.dart';
import 'package:my_quran/common/common.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.title,
    this.actions,
    this.centerTitle,
    this.bottom,
    this.appbarSize,
    this.leading,
  });

  final String? title;
  final List<Widget>? actions;
  final bool? centerTitle;
  final PreferredSizeWidget? bottom;
  final double? appbarSize;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: DefaultText(
        title ?? '',
        style: context.textThemeExt.headlineMedium,
        color: context.colorsExt.text,
      ),
      leading: leading,
      centerTitle: centerTitle ?? false,
      backgroundColor: AppPalette.transparent,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbarSize ?? 50.0);
}
