import 'package:flutter/material.dart';

import '../../../../../common/common.dart';
import '../../../../features.dart';

class BookmarkChipButton extends StatelessWidget {
  const BookmarkChipButton({
    super.key,
    this.isActive = true,
    required this.onPress,
    required this.text,
    required this.mode,
  });
  final bool isActive;
  final VoidCallback onPress;
  final String text;
  final BookmarkCategoryMode mode;

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      borderRadius: 24,
      onPress: onPress,
      isActive: isActive,
      inactiveColor: context.getColorExt(AppColorType.primaryDark1),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child:
          mode.isAddMode
              ? Icon(Icons.add, color: context.getColorExt(AppColorType.whiteBase))
              : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DefaultText(
                    text.capitalFirstChar,
                    color: context.getColorExt(AppColorType.whiteBase),
                  ),
                  4.widthBox,
                  if (mode.isEditMode)
                    Icon(Icons.close, size: 18, color: context.getColorExt(AppColorType.whiteBase)),
                ],
              ),
    );
  }
}
