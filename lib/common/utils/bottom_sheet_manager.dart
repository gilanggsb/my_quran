import 'package:flutter/material.dart';

import '../common.dart';

class BottomSheetManager {
  static final ValueNotifier<bool> isBottomSheetShownNotifier = ValueNotifier(false);

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
    bool? showDragHandle,
    double? height,
    VoidCallback? onClose,
  }) {
    isBottomSheetShownNotifier.value = true;
    _showBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      shape: shape,
      clipBehavior: clipBehavior,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      height: height,
      showDragHandle: showDragHandle,
      onClose: onClose,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            DefaultText(title, fontWeight: FontWeight.bold, fontSize: 18.sp).paddingAll(16),
          if (message != null) DefaultText(message).paddingAll(16),
          if (actions != null)
            Padding(padding: const EdgeInsets.all(8.0), child: OverflowBar(children: actions)),
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
    bool? showDragHandle,
    double? height,
    VoidCallback? onClose,
  }) {
    isBottomSheetShownNotifier.value = true;
    _showBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      shape: shape,
      clipBehavior: clipBehavior,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      height: height,
      onClose: onClose,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            DefaultText(title, fontWeight: FontWeight.bold, fontSize: 18.sp).paddingAll(16),
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
    bool? showDragHandle,
    double? height,
    EdgeInsets? padding,
    VoidCallback? onClose,
  }) {
    isBottomSheetShownNotifier.value = true;
    _showBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      shape: shape,
      clipBehavior: clipBehavior,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      height: height,
      onClose: onClose,
      child: Padding(padding: padding ?? const EdgeInsets.all(16.0), child: child),
    );
  }

  static void showPersistentBottomSheet({
    BuildContext? context,
    required Widget child,
    Color? backgroundColor,
    bool enableDrag = true,
    VoidCallback? onClose,
  }) {
    isBottomSheetShownNotifier.value = true;
    Scaffold.of(context ?? globalContext)
        .showBottomSheet((BuildContext context) {
          return Container(
            color: backgroundColor ?? globalContext.getColorExt(AppColorType.background),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (enableDrag)
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: context.getColorExt(AppColorType.primary),
                      height: 4.sp,
                      width: context.getWidth * 0.1,
                    ),
                  Flexible(child: Padding(padding: const EdgeInsets.all(16.0), child: child)),
                ],
              ),
            ),
          );
        })
        .closed
        .then((_) {
          isBottomSheetShownNotifier.value = false;
          onClose?.call();
        });
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
    bool? showDragHandle = true,
    double? height,
    VoidCallback? onClose,
  }) {
    showModalBottomSheet(
      context: context ?? globalContext,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor ?? globalContext.getColorExt(AppColorType.background),
      shape: shape,
      clipBehavior: clipBehavior,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      builder: (BuildContext context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            final maxHeight = height ?? constraints.maxHeight * 0.9;

            return ConstrainedBox(
              constraints: BoxConstraints(maxHeight: maxHeight),
              child: Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (showDragHandle ?? true)
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 4.sp,
                        width: context.getWidth * 0.1,
                        color: context.getColorExt(AppColorType.primary),
                      ),
                    Flexible(
                      // ✅ Safe for both scrollable and static content
                      child: child,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    ).whenComplete(() {
      isBottomSheetShownNotifier.value = false;
      onClose?.call();
    });
  }

  static void closeCurrentBottomSheet({BuildContext? context}) {
    Navigator.pop(context ?? globalContext);
  }

  static bool isBottomSheetShown() {
    return isBottomSheetShownNotifier.value;
  }
}
