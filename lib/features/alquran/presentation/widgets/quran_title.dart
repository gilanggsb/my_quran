import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/common.dart';

class QuranTitle extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? titleAr;
  const QuranTitle({
    super.key,
    this.title,
    this.titleAr,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultText(
                title ?? '',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
              DefaultText(
                subTitle ?? '',
                fontSize: 14.sp,
                color: context.colorsExt.textLight,
                fontWeight: FontWeight.w100,
              ),
            ],
          ),
        ),
        24.widthBox,
        DefaultText(
          titleAr ?? '',
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
