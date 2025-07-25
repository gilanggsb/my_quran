import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class TabContainer extends StatelessWidget {
  final bool isActive;
  final String tabName;
  final VoidCallback onTap;
  const TabContainer({
    super.key,
    required this.isActive,
    required this.tabName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth * 0.42,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultText(tabName, fontSize: 16.sp),
          Divider(
            color: isActive ? context.getColorExt(AppColorType.primary) : AppPalette.transparent,
          ),
        ],
      ).onTap(onTap),
    );
  }
}
