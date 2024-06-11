import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quran/common/common.dart';

class QuranNumber extends StatelessWidget {
  const QuranNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38.sp,
      width: 38.sp,
      child: Stack(
        children: [
          DefaultImage(
            imageUrl: AppAssets.icRectangleQuranNumber,
            width: 38.sp,
            height: 38.sp,
            imageType: ImageType.asset,
          ),
          const Center(
            child: DefaultText('1'),
          )
        ],
      ),
    );
  }
}
