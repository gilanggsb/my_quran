import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/common.dart';

class QuranStatus extends StatelessWidget {
  final bool isDownload;
  final VoidCallback onTap;
  const QuranStatus({
    super.key,
    required this.onTap,
    this.isDownload = false,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultImage(
      imageUrl: isDownload ? AppAssets.icSpeaker : AppAssets.icDownload,
      width: 26.sp,
      height: 26.sp,
      imageType: ImageType.asset,
    ).onTap(onTap);
  }
}
