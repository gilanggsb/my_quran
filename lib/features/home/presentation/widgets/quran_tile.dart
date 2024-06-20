import 'package:flutter/material.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

class QuranTile extends StatelessWidget {
  final String? number;
  final String? title;
  final String? subTitle;
  final String? titleAr;
  final Widget? rightIcon;
  const QuranTile({
    super.key,
    this.number,
    this.title,
    this.titleAr,
    this.subTitle,
    this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      splashColor: context.colorsExt.primary,
      leading: QuranNumber(number: number),
      onTap: () {},
      title: QuranTitle(
        title: title,
        titleAr: titleAr,
        subTitle: subTitle,
      ),
      trailing: rightIcon,
    );
  }
}
