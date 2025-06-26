import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../lib.dart';

@RoutePage(name: 'SurahRoute')
class SurahTab extends StatelessWidget {
  const SurahTab({super.key});

  @override
  Widget build(BuildContext context) {
    final surahCubit = context.read<SurahCubit>();
    return BlocConsumer<SurahCubit, SurahState>(
      listener: (context, state) {
        // state.whenOrNull(failed: (message) => SnackBarWidget.showFailed(message));
        switch (state) {
          case SurahFailedState(:final message):
            SnackBarWidget.showFailed(message);
            break;
          default:
        }
      },
      builder: (context, state) {
        final isLoading = switch (state) {
          SurahLoadingState() => true,
          _ => false,
        };
        final surahs = isLoading ? BoneMockData.fakeSurahs : surahCubit.surahs;
        // final failedMessage = state.whenOrNull(failed: (data) => data);
        // if (failedMessage != null) {
        //   return EmptyStateWidget(title: 'Gagal memuat data', message: failedMessage);
        // }

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
                    subtitle: '${surah.translateRevelationId} • ${surah.numberOfVerses} Ayat',
                  ),
                  // rightIcon: QuranStatus(
                  //   onTap: () {},
                  // ),
                  onTap: () {
                    final pagination = AyahsThroughoutPagination(
                      ayat: 1,
                      surat: surah.number,
                      panjang: 10,
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
