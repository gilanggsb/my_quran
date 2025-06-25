import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class QuranTile extends StatelessWidget {
  final Quran? quran;
  final Widget? rightIcon;
  final VoidCallback? onTap;
  const QuranTile({super.key, this.quran, this.rightIcon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      splashColor: context.getColorExt(AppColorType.primary),
      onTap: onTap,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuranNumber(number: quran?.number),
          8.widthBox,
          Expanded(child: QuranTitle(quran: quran)),
        ],
      ),
      trailing: rightIcon,
    );
  }
}
