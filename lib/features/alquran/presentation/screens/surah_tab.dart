import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
        final surahs = surahCubit.surahs;
        return RefreshIndicator(
          onRefresh: () async => surahCubit.getData(),
          color: context.colorsExt.primary,
          child: Skeletonizer(
            enabled: isLoading,
            child: ListView.builder(
              itemCount: isLoading ? 10 : surahs.length,
              itemBuilder: (context, index) {
                final surah = surahs.isNotEmpty ? surahs[index] : null;
                return QuranTile(
                  number: surah?.number ?? '',
                  title: surah?.nameId ?? '',
                  titleAr: surah?.nameShort ?? '',
                  subTitle:
                      '${surah?.revelationId} • ${surah?.numberOfVerses} Ayat',
                  rightIcon: QuranStatus(
                    onTap: () {},
                  ),
                  onTap: () {
                    final pagination = AyahsThroughoutPagination(
                      ayat: "1",
                      surat: surah?.number,
                      panjang: surah?.numberOfVerses,
                    );
                    context.pushRoute(
                      QuranDetailRoute(
                        params: QuranDetailParams(
                            ayahsThroughoutPagination: pagination),
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
