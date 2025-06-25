import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common.dart';

class AudioInformation extends StatelessWidget {
  final String title;
  final String subTitle;
  const AudioInformation({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultText(
          key: const Key('title_player'),
          title,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
        DefaultText(
          key: const Key('subtitle_player'),
          subTitle,
          fontSize: 14.sp,
          color: context.getColorExt(AppColorType.textLight),
          fontWeight: FontWeight.w100,
        ),
      ],
    );
  }
}
