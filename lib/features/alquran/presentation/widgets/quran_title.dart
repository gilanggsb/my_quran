import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class QuranTitle extends StatelessWidget {
  final Quran? quran;
  const QuranTitle({
    super.key,
    this.quran,
  });

  @override
  Widget build(BuildContext context) {
    final isArabic = quran?.arabic != null;
    final isPreviewMode = quran?.isPreview != null && quran!.isPreview!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isArabic) ...[
                Align(
                  alignment: Alignment.centerRight,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: DefaultText(
                      quran?.arabic ?? '',
                      fontSize: 32.sp,
                      // maxLines: 1,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.scheherazadeNew().fontFamily,
                      textHeight: 2,
                    ),
                  ),
                ),
                12.heightBox,
              ],
              if (!isPreviewMode)
                DefaultText(
                  quran?.title ?? '',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: isArabic
                      ? context.getColorExt(AppColorType.primary)
                      : null,
                ),
              if (!isPreviewMode)
                DefaultText(
                  quran?.subtitle ?? '',
                  fontSize: 14.sp,
                  color: context.getColorExt(
                    context.isLightTheme
                        ? AppColorType.textDark
                        : AppColorType.textLight,
                  ),
                  fontWeight: FontWeight.w100,
                ),
            ],
          ),
        ),
        if (!isArabic && !isPreviewMode) ...[
          24.widthBox,
          DefaultText(
            quran?.titleAr ?? '',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
      ],
    );
  }
}
