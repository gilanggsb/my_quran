import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollview_observer/scrollview_observer.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class QuranDetailView extends StatelessWidget {
  final QuranDetailParams params;
  const QuranDetailView({super.key, required this.params});

  @override
  Widget build(BuildContext context) {
    final quranDetailCubit = context.read<QuranDetailCubit>();
    final surahCubit = quranDetailCubit.surahCubit;
    globalContext = context;

    return DefaultScaffold(
      appBar: DefaultAppBar(
        title: 'Detail',
        actions: [
          DefaultImage(
            imageUrl: AppAssets.icJumpTo,
            color: context.colorsExt.text,
            width: 26.sp,
            height: 26.sp,
            imageType: ImageType.asset,
          ).paddingSymmetric(horizontal: 12).onTap(
                () => showBottomSheetJumpToAyah(context),
              ),
        ],
        leading: IconButton(
          onPressed: context.back,
          icon: Icon(
            Icons.chevron_left,
            color: context.colorsExt.text,
            size: 32,
          ),
        ),
      ),
      onInit: () {
        context.read<QuranDetailCubit>().getData(params);
      },
      onDispose: context.read<QuranDetailCubit>().dispose,
      body: BlocBuilder<QuranDetailCubit, QuranDetailState>(
        builder: (context, state) {
          final isLoading = state.whenOrNull(loading: () => true) ?? false;
          final isLoadingRetrieveMoreData =
              state.whenOrNull(loadingMoreData: () => true) ?? false;
          final ayahs =
              isLoading ? BoneMockData.fakeAyahs : quranDetailCubit.ayahs;
          final sliverCtx = quranDetailCubit.sliverContext;

          return ListViewObserver(
            controller: quranDetailCubit.observerController,
            sliverListContexts: () => [
              if (sliverCtx != null) sliverCtx,
            ],
            child: CustomScrollView(
              controller: quranDetailCubit.scrollController,
              slivers: [
                Skeletonizer.sliver(
                  enabled: isLoading,
                  child: SliverList.separated(
                    itemCount:
                        ayahs.length + (isLoadingRetrieveMoreData ? 1 : 0),
                    separatorBuilder: (_, indx) => 8.heightBox,
                    itemBuilder: (BuildContext ctx, int index) {
                      if (sliverCtx != ctx) {
                        quranDetailCubit.sliverContext = ctx;
                      }
                      final ayah = ayahs[index];
                      final surah = surahCubit.surahs.firstWhereOrNull(
                        (surah) => surah.number == ayah.surah,
                      );

                      return Column(
                        children: [
                          if (ayah.ayah == '1' && !isLoading)
                            QuranHeaderAyah(surah: surah),
                          QuranTile(
                            quran: Quran(
                              number: ayah.ayah,
                              arabic: ayah.arab,
                              title: ayah.latin,
                              subtitle: ayah.text,
                            ),
                          ).paddingSymmetric(horizontal: 8),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void showBottomSheetJumpToAyah(BuildContext context) {
    BottomSheetManager.showCustomBottomSheet(
      child: JumpAyahBottomSheet(
        quranDetailCubit: context.read<QuranDetailCubit>(),
      ),
    );
  }
}
