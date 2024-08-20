import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/common.dart';

class QuranNumber extends StatelessWidget {
  final String? number;
  const QuranNumber({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.sp,
      width: 40.sp,
      child: Stack(
        children: [
          DefaultImage(
            imageUrl: AppAssets.icRectangleQuranNumber,
            width: 40.sp,
            height: 40.sp,
            imageType: ImageType.asset,
          ),
          Center(
            child: DefaultText(
              number ?? '',
              fontSize: 11.sp,
            ),
          ),
        ],
      ),
    );
  }
}
