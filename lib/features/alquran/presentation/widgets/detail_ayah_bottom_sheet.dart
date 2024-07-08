import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class DetailAyahBottomSheet extends StatelessWidget {
  const DetailAyahBottomSheet({
    super.key,
    required this.quranDetailCubit,
    required this.ayah,
  });

  final QuranDetailCubit quranDetailCubit;
  final Ayah ayah;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<DetailAyahCubit>()
        ..init(
          ayah: ayah,
          params: quranDetailCubit.paramsData,
        ),
      child: BlocBuilder<DetailAyahCubit, DetailAyahState>(
        builder: (context, state) {
          final isLoading = state.whenOrNull(loading: () => true) ?? false;
          final detailAyahCubit = context.read<DetailAyahCubit>();
          final surah = detailAyahCubit.surah;
          final title = "QS. ${surah?.nameId ?? ''}: Ayat ${ayah.id ?? ''}";

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Skeletonizer(
                    enabled: isLoading,
                    child: DefaultText(
                      isLoading ? BoneMock.name : title,
                      fontSize: 20.sp,
                      color: context.getColorExt(AppColorType.text),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: context.getColorExt(AppColorType.primary),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: menus.length,
                itemBuilder: (ctx, index) {
                  final menu = menus[index];
                  return ListTile(
                    leading: menu.icon,
                    title: DefaultText(menu.name),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

final menus = [
  QuranDetailMenu(
    id: 1,
    icon: const Icon(Icons.play_arrow_rounded),
    name: 'Play Murottal',
  ),
  QuranDetailMenu(
    id: 2,
    icon: const Icon(Icons.copy),
    name: 'Copy Surah',
  ),
  QuranDetailMenu(
    id: 3,
    icon: const Icon(Icons.bookmark),
    name: 'Add to bookmark',
  ),
  QuranDetailMenu(
    id: 4,
    icon: const Icon(Icons.link),
    name: 'Mark as last read',
  ),
];
