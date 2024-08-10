import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class TafseerSurahBottomSheet extends StatelessWidget {
  const TafseerSurahBottomSheet({super.key, required this.quranDetailCubit});
  final QuranDetailCubit quranDetailCubit;

  @override
  Widget build(BuildContext context) {
    final surah = quranDetailCubit.surah;
    final bgColor = context.getColorExt(AppColorType.background);
    return SizedBox(
      width: context.getWidth,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: DefaultText(
              surah?.nameId ?? '',
              fontWeight: FontWeight.bold,
              fontSize: 24,
              textAlign: TextAlign.center,
            ),
            backgroundColor: bgColor,
            shadowColor: bgColor,
            foregroundColor: bgColor,
            surfaceTintColor: bgColor,
            automaticallyImplyLeading: false,
            pinned: true,
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
