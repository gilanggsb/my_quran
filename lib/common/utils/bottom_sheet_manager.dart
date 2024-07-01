import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common.dart';

class BottomSheetManager {
  static void showSimpleBottomSheet({
    BuildContext? context,
    String? title,
    String? message,
    List<Widget>? actions,
    bool isScrollControlled = false,
    Color? backgroundColor,
    ShapeBorder? shape,
    Clip? clipBehavior,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    _showBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      shape: shape,
      clipBehavior: clipBehavior,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            DefaultText(
              title,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ).paddingAll(16),
          if (message != null) DefaultText(message).paddingAll(16),
          if (actions != null)
            ButtonBar(
              children: actions,
            ),
        ],
      ),
    );
  }

  static void showListBottomSheet({
    BuildContext? context,
    String? title,
    required List<String> items,
    required ValueChanged<int> onItemSelected,
    bool isScrollControlled = false,
    Color? backgroundColor,
    ShapeBorder? shape,
    Clip? clipBehavior,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    _showBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      shape: shape,
      clipBehavior: clipBehavior,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            DefaultText(
              title,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ).paddingAll(16),
          ...items.asMap().entries.map((entry) {
            int index = entry.key;
            String item = entry.value;
            return ListTile(
              title: Text(item),
              onTap: () {
                Navigator.pop(context ?? globalContext);
                onItemSelected(index);
              },
            );
          }),
        ],
      ),
    );
  }

  static void showCustomBottomSheet({
    BuildContext? context,
    required Widget child,
    bool isScrollControlled = false,
    Color? backgroundColor,
    ShapeBorder? shape,
    Clip? clipBehavior,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    _showBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      shape: shape,
      clipBehavior: clipBehavior,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      child: child,
    );
  }

  static void _showBottomSheet({
    BuildContext? context,
    required Widget child,
    bool isScrollControlled = false,
    Color? backgroundColor,
    ShapeBorder? shape,
    Clip? clipBehavior,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    showModalBottomSheet(
      context: context ?? globalContext,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor ?? globalContext.colorsExt.background,
      shape: shape,
      clipBehavior: clipBehavior,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SizedBox(width: globalContext.getWidth, child: child),
        );
      },
    );
  }

  static void closeCurrentBottomSheet({BuildContext? context}) {
    Navigator.pop(context ?? globalContext);
  }
}
