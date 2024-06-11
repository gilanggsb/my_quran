import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quran/common/common.dart';

class QuranTitle extends StatelessWidget {
  const QuranTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(
              'Al-Fatihah',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
            Row(
              children: [
                DefaultText(
                  'MEKKAH',
                  fontSize: 14.sp,
                  color: context.colorsExt.textLight,
                  fontWeight: FontWeight.w100,
                ),
                DefaultText(
                  ' • ',
                  fontSize: 14.sp,
                  color: context.colorsExt.textLight,
                  fontWeight: FontWeight.w100,
                ),
                DefaultText(
                  '7 AYAT',
                  fontSize: 14.sp,
                  color: context.colorsExt.textLight,
                  fontWeight: FontWeight.w100,
                ),
              ],
            ),
          ],
        ),
        DefaultText(
          'الفاتحة',
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
