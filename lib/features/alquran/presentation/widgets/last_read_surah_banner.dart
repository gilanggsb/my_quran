import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../lib.dart';

class LastReadSurahBanner extends StatelessWidget {
  const LastReadSurahBanner({super.key});

  void onBannerTap(LastReadAyah? lastReadAyah) {
    if (lastReadAyah == null) return;
    final params = QuranDetailParams(
      detailType: QuranDetailTypeEnum.bySurahs,
      lastReadAyah: lastReadAyah,
    );
    BottomSheetManager.showCustomBottomSheet(
      child: DetailAyahBottomSheet(quranDetailParams: params, ayah: lastReadAyah.ayah),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: false,
      child: ClipRRect(
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
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  final homeBloc = context.read<HomeBloc>();
                  final lastReadAyah = homeBloc.lastReadAyah;
                  final isLoading = switch (state) {
                    HomeLoadingState() => true,
                    _ => false,
                  };
                  return Skeletonizer(
                    enabled: isLoading,
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
                              color: AppPalette.white.base,
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
                                lastReadAyah?.surah?.nameId ?? '-',
                                color: AppPalette.white.base,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              DefaultText(
                                'Ayat No: ${lastReadAyah?.ayah?.ayah ?? '-'}',
                                color: AppPalette.white.base,
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).onTap(() => onBannerTap(lastReadAyah)),
                  );
                },
              ),
            ).paddingAll(12),
          ],
        ),
      ),
    );
  }
}
