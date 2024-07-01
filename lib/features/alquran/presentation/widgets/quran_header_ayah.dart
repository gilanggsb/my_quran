import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class QuranHeaderAyah extends StatelessWidget {
  QuranHeaderAyah({
    super.key,
    required this.surah,
  });

  final Surah? surah;
  final ValueNotifier valHeaderSize =
      ValueNotifier<Size>(Size(globalContext.getWidth * 0.4, 54));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultText(
          "${surah?.number}. ${surah?.nameId}",
          fontSize: 20.sp,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w600,
          color: context.colorsExt.text,
        ),
        6.heightBox,
        Container(
          color: context.colorsExt.primary,
          width: context.getWidth,
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultImage(
                imageUrl: AppAssets.headerOrnament,
                imageType: ImageType.asset,
                width: 26,
                height: 54,
              ),
              SizedBox(
                width: context.getWidth * 0.13,
                child: DefaultText(
                  surah?.translateRevelationId ?? '',
                  textAlign: TextAlign.center,
                  fontSize: 14.sp,
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    constraints: const BoxConstraints(minHeight: 54),
                    child: DefaultImage(
                      imageUrl: AppAssets.titleHeaderOrnament,
                      imageType: ImageType.asset,
                      width: context.getWidth * 0.4,
                    ),
                  ),
                  SizedBox(
                    width: context.getWidth * 0.3,
                    child: Center(
                      child: DefaultText(
                        surah?.translationId ?? '',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: context.getWidth * 0.13,
                child: Column(
                  children: [
                    DefaultText(
                      surah?.numberOfVerses ?? '',
                      fontSize: 14.sp,
                    ),
                    DefaultText(
                      'Ayat',
                      fontSize: 14.sp,
                    ),
                  ],
                ),
              ),
              Transform.rotate(
                angle: 3.1,
                child: DefaultImage(
                  imageUrl: AppAssets.headerOrnament,
                  imageType: ImageType.asset,
                  width: 26,
                  height: 54,
                ),
              ),
            ],
          ),
        ),
        10.heightBox,
      ],
    );
  }
}