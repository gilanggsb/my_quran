import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class TafseerSurahBottomSheet extends StatelessWidget {
  const TafseerSurahBottomSheet({super.key, required this.quranDetailCubit});
  final QuranDetailCubit quranDetailCubit;

  @override
  Widget build(BuildContext context) {
    final surah = quranDetailCubit.surah;
    return SizedBox(
      width: context.getWidth,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: DefaultText(
              surah?.nameId ?? '',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            backgroundColor: context.getColorExt(AppColorType.background),
            automaticallyImplyLeading: false,
            pinned: true,
            shadowColor: context.getColorExt(AppColorType.background),
          ),
          SliverToBoxAdapter(
            child: DefaultText(
              surah?.tafsir ?? '',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
