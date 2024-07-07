import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class SearchSurahOrJuzBottomSheet extends StatelessWidget {
  const SearchSurahOrJuzBottomSheet({super.key, required this.jumpAyahCubit});
  final JumpAyahCubit jumpAyahCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JumpAyahCubit, JumpAyahState>(
      bloc: jumpAyahCubit,
      builder: (context, state) {
        final isSurahType = jumpAyahCubit.isSurahsType;
        final surahs = jumpAyahCubit.tempSurahs;
        final juzs = jumpAyahCubit.tempJuzs;
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: 12.heightBox,
            ),
            SliverAppBar(
              pinned: true,
              leading: Icon(
                Icons.search,
                color: context.isLightTheme
                    ? context.getColorExt(AppColorType.text)
                    : context.getColorExt(AppColorType.background),
              ),
              backgroundColor: Colors.transparent,
              flexibleSpace: DefaultTextField(
                prefix: 32.widthBox,
                hintTextStyle: AppStyle.text(
                  fontColor: context.isLightTheme
                      ? context.getColorExt(AppColorType.text)
                      : context.getColorExt(AppColorType.background),
                ),
                textStyle: AppStyle.text(
                  fontColor: context.isLightTheme
                      ? context.getColorExt(AppColorType.text)
                      : context.getColorExt(AppColorType.background),
                ),
                hintText: 'Search ${isSurahType ? "Surah" : "Juz"}',
                controller: jumpAyahCubit.searchController,
                onChanged: jumpAyahCubit.filterSurahOrJuz,
                suffix: jumpAyahCubit.searchController.text.isEmpty
                    ? null
                    : Icon(
                        Icons.clear,
                        color: context.isLightTheme
                            ? context.getColorExt(AppColorType.text)
                            : context.getColorExt(AppColorType.background),
                      ).onTap(jumpAyahCubit.clearfilterSurahOrJuz),
              ),
            ),
            SliverToBoxAdapter(
              child: 12.heightBox,
            ),
            SliverList.separated(
              itemCount: isSurahType ? surahs.length : juzs.length,
              itemBuilder: (context, index) {
                final juz = index < juzs.length ? juzs[index] : null;
                final surah = index < surahs.length ? surahs[index] : null;
                return QuranTile(
                  quran: Quran(
                    title: isSurahType ? surah?.nameId : juz?.name,
                    number: isSurahType ? surah?.number : juz?.number,
                  ),
                  onTap: () {
                    BottomSheetManager.closeCurrentBottomSheet();
                    jumpAyahCubit.changeSurahOrJuz(
                      isSurahType ? surah?.number : juz?.number,
                    );
                  },
                );
              },
              separatorBuilder: (ctx, idx) => const Divider(
                thickness: 0.2,
              ),
            ),
          ],
        );
      },
    );
  }
}
