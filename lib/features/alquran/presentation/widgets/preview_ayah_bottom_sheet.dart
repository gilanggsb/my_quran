import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../lib.dart';


class PreviewAyahBottomSheet extends StatelessWidget {
  const PreviewAyahBottomSheet({super.key, required this.quranDetailCubit});
  final QuranDetailCubit quranDetailCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt.get<PreviewAyahCubit>()
                ..init(params: quranDetailCubit.paramsData, ayahs: quranDetailCubit.ayahs),
      child: BlocBuilder<PreviewAyahCubit, PreviewAyahState>(
        builder: (context, state) {
          final isLoading = switch (state) {
            PreviewAyahLoadingState() => true,
            _ => false,
          };
          final previewAyahCubit = context.read<PreviewAyahCubit>();
          final jumpAyahTitle = previewAyahCubit.previewAyahTitle;
          final ayahs = isLoading ? BoneMockData.fakeAyahs : previewAyahCubit.ayahs;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Skeletonizer(
                    enabled: isLoading,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: previewAyahCubit.next,
                          icon: const Icon(Icons.chevron_left),
                          color: context.getColorExt(AppColorType.text),
                        ),
                        DefaultText(
                          isLoading ? BoneMock.name : jumpAyahTitle,
                          fontSize: 20.sp,
                          color: context.getColorExt(AppColorType.text),
                        ),
                        IconButton(
                          onPressed: previewAyahCubit.prev,
                          icon: const Icon(Icons.chevron_right),
                          color: context.getColorExt(AppColorType.text),
                        ),
                      ],
                    ).onTap(() => showBottomSheetSearchSurahOrJuz(context)),
                  ),
                  Divider(thickness: 2, color: context.getColorExt(AppColorType.primary)),
                ],
              ),
              Expanded(
                child: CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    Skeletonizer.sliver(
                      enabled: isLoading,
                      child: SliverList.separated(
                        separatorBuilder: (ctx, idx) => const Divider(thickness: 0.2),
                        itemCount: ayahs.length,
                        itemBuilder: (context, index) {
                          final ayah = ayahs[index];

                          return QuranTile(
                            quran: Quran(
                              number: ayah.ayah,
                              arabic: ayah.arab,
                              isPreview: true,
                              arabicMaxLine: 1,
                            ),
                            onTap: () => onSurahTap(index, ayah, previewAyahCubit),
                          ).paddingSymmetric(horizontal: 10);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void onSurahTap(int index, Ayah ayah, PreviewAyahCubit jumpAyahCubit) {
    BottomSheetManager.closeCurrentBottomSheet();
    final newParams = jumpAyahCubit.getNewParamsData(ayah);
    quranDetailCubit.jumpToAyah(ayahsIndex: index, params: newParams);
  }

  void showBottomSheetSearchSurahOrJuz(BuildContext context) {
    BottomSheetManager.showCustomBottomSheet(
      height: context.getHeight * 0.4,
      child: SearchSurahOrJuzBottomSheet(jumpAyahCubit: context.read<PreviewAyahCubit>()),
    );
  }
}
