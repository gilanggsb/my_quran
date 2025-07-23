import 'package:flutter/material.dart';

import '../common.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    this.onPress,
    this.text,
    this.padding,
    this.width,
    this.height,
    this.margin,
    this.textAlign,
    this.backgroundColor,
    this.borderRadius,
    this.borderColor,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.child,
    this.boxShadow,
    this.boxDecoration,
    this.disabled = false,
    // this.disableColor,
    // this.isActive = true,
    this.activeColor,
    this.inactiveColor,
  });

  final Function()? onPress;
  final String? text;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width, height;
  final TextAlign? textAlign;
  final Color? backgroundColor;
  final double? borderRadius;
  final Color? borderColor;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final Widget? child;
  final List<BoxShadow>? boxShadow;
  final BoxDecoration? boxDecoration;
  final bool disabled;
  // final Color? disableColor;
  // final bool isActive;
  final Color? activeColor;
  final Color? inactiveColor;

  @override
  Widget build(BuildContext context) {
    final Color effectiveBackgroundColor =
        disabled
            ? inactiveColor ?? backgroundColor ?? context.getColorExt(AppColorType.grey40)!
            : activeColor ?? backgroundColor ?? context.getColorExt(AppColorType.primary)!;

    final Color effectiveFontColor =
        fontColor != null
            ? fontColor!
            : disabled
            ? Colors.white70
            : context.getColorExt(AppColorType.text)!;

    return InkWell(
      onTap: disabled ? null : onPress,
      splashColor: effectiveBackgroundColor.withAlpha(100),
      radius: borderRadius ?? 10,
      child: Container(
        margin: margin,
        width: width,
        height: height,
        padding: padding,
        decoration:
            boxDecoration ??
            BoxDecoration(
              color: effectiveBackgroundColor,
              border: Border.all(color: borderColor ?? context.getColorExt(AppColorType.primary)!),
              borderRadius: BorderRadius.circular(borderRadius ?? 10),
              boxShadow: boxShadow,
            ),
        child:
            child ??
            DefaultText(
              text ?? "",
              mainAxisAlignmentRow: MainAxisAlignment.center,
              textAlign: textAlign,
              fontSize: fontSize ?? 16,
              fontWeight: fontWeight ?? FontWeight.w700,
              color: effectiveFontColor,
            ),
      ),
    );
  }

  // Static method for creating a TextButton
  static Widget textButton({
    required Function() onPress,
    required String text,
    Color? textColor,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    EdgeInsets? padding,
    bool disabled = false,
    // Color? disableColor,
    bool isActive = true,
    Color? activeColor,
    Color? inactiveColor,
    double? width,
    double? height,
  }) {
    return DefaultButton(
      inactiveColor: inactiveColor,
      // isActive: isActive,
      activeColor: activeColor,
      disabled: disabled,
      // disableColor: disableColor ?? globalContext.getColorExt(AppColorType.grey60),
      padding: padding,
      onPress: onPress,
      text: text,
      backgroundColor: backgroundColor,
      borderColor: Colors.transparent,
      fontColor: textColor,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.normal,
      width: width,
      height: height,
    );
  }

  // Static method for creating a ChipButton
  static Widget chipButton({
    required Function() onPress,
    required String text,
    Color? backgroundColor,
    Color? textColor,
    double? borderRadius,
    EdgeInsets? padding,
    bool disabled = false,
    // Color? disableColor,
    bool isActive = true,
    Color? activeColor,
    Color? inactiveColor,
    double? width,
    double? height,
  }) {
    return DefaultButton(
      inactiveColor: inactiveColor,
      // isActive: isActive,
      activeColor: activeColor,
      disabled: disabled,
      // disableColor: disableColor ?? globalContext.getColorExt(AppColorType.grey60),
      padding: padding,
      onPress: onPress,
      text: text,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius ?? 20,
      fontColor: textColor,
      width: width,
      height: height,
    );
  }

  // Static method for creating an OutlineButton
  static Widget outlineButton({
    required Function() onPress,
    required String text,
    Color? borderColor,
    Color? textColor,
    double? fontSize,
    FontWeight? fontWeight,
    EdgeInsets? padding,
    bool disabled = false,
    // Color? disableColor,
    bool isActive = true,
    Color? activeColor,
    Color? inactiveColor,
    double? width,
    double? height,
  }) {
    return DefaultButton(
      inactiveColor: inactiveColor,
      // isActive: isActive,
      activeColor: activeColor,
      disabled: disabled,
      // disableColor: disableColor ?? globalContext.getColorExt(AppColorType.grey60),
      padding: padding,
      onPress: onPress,
      text: text,
      backgroundColor: Colors.transparent,
      borderColor: borderColor,
      fontColor: textColor,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.normal,
      width: width,
      height: height,
    );
  }

  // Static method for creating an IconButton
  static Widget iconButton({
    required Function() onPress,
    required IconData icon,
    Color? iconColor,
    double? size,
    Color? backgroundColor,
    double? borderRadius,
    EdgeInsets? padding,
    bool disabled = false,
    // Color? disableColor,
    bool isActive = true,
    Color? activeColor,
    Color? inactiveColor,
    double? width,
    double? height,
  }) {
    return DefaultButton(
      inactiveColor: inactiveColor,
      // isActive: isActive,
      activeColor: activeColor,
      disabled: disabled,
      // disableColor: disableColor ?? globalContext.getColorExt(AppColorType.grey60),
      padding: padding,
      onPress: onPress,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius ?? 10,
      width: width,
      height: height,
      child: Center(child: Icon(icon, color: iconColor ?? Colors.white, size: size ?? 24)),
    );
  }

  // Static method for creating an ElevatedButton
  static Widget elevatedButton({
    required Function() onPress,
    required String text,
    Color? backgroundColor,
    Color? textColor,
    double? borderRadius,
    double? fontSize,
    FontWeight? fontWeight,
    EdgeInsets? padding,
    bool disabled = false,
    // Color? disableColor,
    bool isActive = true,
    Color? activeColor,
    Color? inactiveColor,
    double? width,
    double? height,
    Color? borderColor,
  }) {
    return DefaultButton(
      inactiveColor: inactiveColor,
      // isActive: isActive,
      activeColor: activeColor,
      disabled: disabled,
      // disableColor: disableColor,
      padding: padding,
      onPress: onPress,
      text: text,
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      fontColor: textColor,
      borderRadius: borderRadius ?? 10,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.bold,
      boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)],
      width: width,
      height: height,
    );
  }
}
