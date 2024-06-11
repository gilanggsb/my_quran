import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quran/common/common.dart';

class LastReadSurahBanner extends StatelessWidget {
  const LastReadSurahBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          DefaultImage(
            imageUrl: AppAssets.quranBanner,
            width: context.getWidth,
            height: context.getHeight * 0.15,
            imageType: ImageType.asset,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: context.getWidth,
            height: context.getHeight * 0.125,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultImage(
                      imageUrl: AppAssets.icQuran,
                      width: 18.sp,
                      height: 20.sp,
                      imageType: ImageType.asset,
                    ),
                    8.widthBox,
                    DefaultText(
                      'Terakhir Dibaca',
                      color: AppPalette.white.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DefaultText(
                        'Al-Fatihah',
                        color: AppPalette.white.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      DefaultText(
                        'Ayat No: 1',
                        color: AppPalette.white.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ).paddingAll(12),
        ],
      ),
    );
  }
}
