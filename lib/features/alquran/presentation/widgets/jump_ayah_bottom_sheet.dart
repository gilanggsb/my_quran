import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class JumpAyahBottomSheet extends StatelessWidget {
  const JumpAyahBottomSheet({super.key, required this.quranDetailCubit});
  final QuranDetailCubit quranDetailCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<JumpAyahCubit>()
        ..init(
          params: quranDetailCubit.paramsData,
          ayahs: quranDetailCubit.ayahs,
        ),
      child: BlocBuilder<JumpAyahCubit, JumpAyahState>(
        builder: (context, state) {
          final isLoading = state.whenOrNull(loading: () => true) ?? false;
          final jumpAyahCubit = context.read<JumpAyahCubit>();
          final jumpAyahTitle = jumpAyahCubit.jumpAyahTitle;
          final ayahs =
              isLoading ? BoneMockData.fakeAyahs : jumpAyahCubit.ayahs;
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
                          onPressed: jumpAyahCubit.next,
                          icon: const Icon(Icons.chevron_left),
                          color: context.colorsExt.text,
                        ),
                        DefaultText(
                          jumpAyahTitle,
                          fontSize: 20.sp,
                          color: context.colorsExt.text,
                        ),
                        IconButton(
                          onPressed: jumpAyahCubit.prev,
                          icon: const Icon(Icons.chevron_right),
                          color: context.colorsExt.text,
                        ),
                      ],
                    ).paddingAll(8),
                  ),
                  Divider(
                    thickness: 2,
                    color: context.colorsExt.primary,
                  ),
                ],
              ),
              Expanded(
                child: CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    Skeletonizer.sliver(
                      enabled: isLoading,
                      child: SliverList.separated(
                        separatorBuilder: (ctx, idx) => const Divider(
                          thickness: 0.2,
                        ),
                        itemCount: ayahs.length,
                        itemBuilder: (context, index) {
                          final ayah = ayahs[index];

                          return QuranTile(
                            quran: Quran(
                              number: ayah.ayah,
                              arabic: ayah.arab,
                              isPreview: true,
                            ),
                            onTap: () {
                              BottomSheetManager.closeCurrentBottomSheet();
                              quranDetailCubit.jumpToAyah(index);
                            },
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
}
