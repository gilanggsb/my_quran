import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

@RoutePage(name: 'SurahRoute')
class SurahTab extends StatelessWidget {
  const SurahTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SurahCubit, SurahState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (message) => SnackBarWidget.showFailed(message),
        );
      },
      builder: (context, state) {
        final surahCubit = context.read<SurahCubit>();
        final isLoading = state.whenOrNull(loading: () => true) ?? false;
        final surahs = isLoading ? BoneMockData.fakeSurahs : surahCubit.surahs;
        return RefreshIndicator(
          onRefresh: () async => surahCubit.getData(),
          color: context.getColorExt(AppColorType.primary),
          child: Skeletonizer(
            enabled: isLoading,
            child: ListView.builder(
              itemCount: surahs.length,
              itemBuilder: (context, index) {
                final surah = surahs[index];
                return QuranTile(
                  quran: Quran(
                    number: surah.number,
                    title: surah.nameId,
                    titleAr: surah.nameShort,
                    subtitle:
                        '${surah.translateRevelationId} • ${surah.numberOfVerses} Ayat',
                  ),
                  rightIcon: QuranStatus(
                    onTap: () {},
                  ),
                  onTap: () {
                    final pagination = AyahsThroughoutPagination(
                      ayat: "1",
                      surat: surah.number,
                      panjang: "10",
                    );
                    context.pushRoute(
                      QuranDetailRoute(
                        params: QuranDetailParams(
                          ayahsThroughoutPagination: pagination,
                          detailType: QuranDetailTypeEnum.bySurahs,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
