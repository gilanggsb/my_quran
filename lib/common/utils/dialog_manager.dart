import 'package:flutter/material.dart';

import '../common.dart';

class DialogManager {
  static Future<void> showConfirmDialog({
    BuildContext? context,
    String? title,
    String? message,
    String? okTitle,
    String? cancleTitle,
    VoidCallback? onOKPress,
    VoidCallback? onCancelPress,
    List<Widget>? actions,
    bool barrierDismissible = true,
    Color? barrierColor,
    VoidCallback? onClose,
    Offset? anchorPoint,
    String? barrierLabel,
    RouteSettings? routeSettings,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    bool useRootNavigator = false,
    bool useSafeArea = true,
  }) {
    return DialogManager.showSimpleDialog(
      title: title ?? "Confirm",
      message: message ?? "Apakah anda yakin ingin memproses ini?",
      actions: [
        DefaultButton.outlineButton(
          onPress: () {
            onCancelPress?.call();
            DialogManager.closeCurrentDialog();
          },
          text: cancleTitle ?? 'Tidak',
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        DefaultButton.textButton(
          onPress: () {
            onOKPress?.call();
            DialogManager.closeCurrentDialog();
          },
          text: okTitle ?? 'Ya',
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
      ],
    );
  }

  static Future<void> showSimpleDialog({
    BuildContext? context,
    String? title,
    String? message,
    List<Widget>? actions,
    bool barrierDismissible = true,
    Color? barrierColor,
    VoidCallback? onClose,
    Offset? anchorPoint,
    String? barrierLabel,
    RouteSettings? routeSettings,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    bool useRootNavigator = false,
    bool useSafeArea = true,
  }) {
    return _showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      onClose: onClose,
      anchorPoint: anchorPoint,
      barrierLabel: barrierLabel,
      routeSettings: routeSettings,
      traversalEdgeBehavior: traversalEdgeBehavior,
      useRootNavigator: useRootNavigator,
      useSafeArea: useSafeArea,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: context.getColorExt(AppColorType.background),
          title: title != null ? Text(title, style: AppStyle.text(type: TextStyleType.bold)) : null,
          content: message != null ? Text(message, style: AppStyle.text(fontSize: 16)) : null,
          actions:
              actions ??
              [
                TextButton(
                  child: Text('OK', style: AppStyle.text(fontSize: 16)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
        );
      },
    );
  }

  static Future<T?> showCustomDialog<T>({
    BuildContext? context,
    required Widget content,
    bool barrierDismissible = true,
    Color? barrierColor,
    VoidCallback? onClose,
    Offset? anchorPoint,
    String? barrierLabel,
    RouteSettings? routeSettings,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    bool useRootNavigator = false,
    bool useSafeArea = true,
  }) {
    return _showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      onClose: onClose,
      anchorPoint: anchorPoint,
      barrierLabel: barrierLabel,
      routeSettings: routeSettings,
      traversalEdgeBehavior: traversalEdgeBehavior,
      useRootNavigator: useRootNavigator,
      useSafeArea: useSafeArea,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: content,
        );
      },
    );
  }

  static Future<bool?> showInputDialog({
    BuildContext? context,
    String? title,
    String? message,
    TextEditingController? controller,
    bool barrierDismissible = true,
    Color? barrierColor,
    VoidCallback? onClose,
    ValueChanged<String>? onOK,
    Offset? anchorPoint,
    String? barrierLabel,
    RouteSettings? routeSettings,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    String? hintText,
    bool useRootNavigator = false,
    bool useSafeArea = true,
  }) {
    final validContext = context ?? globalContext;
    TextEditingController inputController = controller ?? TextEditingController();
    return _showDialog<bool>(
      context: validContext,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      onClose: () {
        onClose?.call();
        Future.delayed(Duration(milliseconds: 250), () => inputController.dispose());
      },
      anchorPoint: anchorPoint,
      barrierLabel: barrierLabel,
      routeSettings: routeSettings,
      traversalEdgeBehavior: traversalEdgeBehavior,
      useRootNavigator: useRootNavigator,
      useSafeArea: useSafeArea,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: context.getColorExt(AppColorType.background),
          title: title != null ? Text(title) : null,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (message != null) Text(message),
              DefaultTextField(
                controller: inputController,
                hintText: hintText,
                textStyle: validContext.textThemeExt.bodyMedium.copyWith(
                  color: context.getColorExt(
                    context.isLightTheme ? AppColorType.textLight : AppColorType.textDark,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            DefaultButton.outlineButton(
              text: 'Cancel',
              onPress: () {
                Navigator.of(context).pop(); // Return false for Cancel
              },
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            ),
            DefaultButton.textButton(
              text: 'OK',
              onPress: () {
                onOK?.call(inputController.text);
                Navigator.of(context).pop(); // Return true for OK
              },
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            ),
          ],
        );
      },
    );
  }

  static Future<T?> _showDialog<T>({
    BuildContext? context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    Color? barrierColor,
    VoidCallback? onClose,
    Offset? anchorPoint,
    String? barrierLabel,
    RouteSettings? routeSettings,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    bool useRootNavigator = false,
    bool useSafeArea = true,
  }) {
    BuildContext? validContext = context ?? globalContext;
    return showDialog<T>(
      context: validContext,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor ?? Colors.black45,
      anchorPoint: anchorPoint,
      barrierLabel: barrierLabel,
      routeSettings: routeSettings,
      traversalEdgeBehavior: traversalEdgeBehavior,
      useRootNavigator: useRootNavigator,
      useSafeArea: useSafeArea,
      builder: builder,
    ).then((value) {
      onClose?.call();
      return value;
    });
  }

  static void closeCurrentDialog({BuildContext? context}) {
    Navigator.pop(context ?? globalContext);
  }
}
