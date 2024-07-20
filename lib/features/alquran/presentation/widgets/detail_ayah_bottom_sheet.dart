import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class DetailAyahBottomSheet extends StatelessWidget {
  const DetailAyahBottomSheet({
    super.key,
    this.quranDetailParams,
    this.ayah,
  });

  final QuranDetailParams? quranDetailParams;
  final Ayah? ayah;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<DetailAyahCubit>()
        ..init(
          ayah: ayah,
          params: quranDetailParams,
        ),
      child: BlocBuilder<DetailAyahCubit, DetailAyahState>(
        builder: (context, state) {
          final isLoading = state.whenOrNull(loading: () => true) ?? false;
          final detailAyahCubit = context.read<DetailAyahCubit>();
          final surah = detailAyahCubit.surah;
          final title = "QS. ${surah?.nameId ?? ''}: Ayat ${ayah?.ayah ?? ''}";
          final currentMenus =
              quranDetailParams?.lastReadAyah != null ? readAyahAsmenus : menus;

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
              Skeletonizer(
                enabled: isLoading,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: currentMenus.length,
                  itemBuilder: (ctx, index) {
                    final menu = currentMenus[index];
                    return ListTile(
                      leading: menu.icon,
                      title: DefaultText(menu.name),
                      onTap: () => onDetailMenuTap(context, menu),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> onDetailMenuTap(
    BuildContext context,
    QuranDetailMenu menu,
  ) async {
    final detailAyahCubit = context.read<DetailAyahCubit>();
    BottomSheetManager.closeCurrentBottomSheet();
    switch (menu.getType()) {
      case QuranDetailMenuType.lastread:
        detailAyahCubit.saveAyah().then((a) {
          globalContext.read<HomeBloc>().add(const HomeEvent.getData());
        });
        break;
      case QuranDetailMenuType.copy:
        detailAyahCubit.copyAyah();
        break;
      case QuranDetailMenuType.play:
        playAyah(
          params: detailAyahCubit.paramsData,
          ayah: detailAyahCubit.currentAyah,
        );
        break;
      case QuranDetailMenuType.readAsSurah:
        final paramsData = detailAyahCubit.getParamsDataReadAsSurah();
        context.pushRoute(QuranDetailRoute(params: paramsData));
        break;
      case QuranDetailMenuType.readAsJuz:
        final paramsData = detailAyahCubit.getParamsDataReadAsJuz();
        context.pushRoute(QuranDetailRoute(params: paramsData));
        break;
      default:
    }
  }

  void playAyah({QuranDetailParams? params, Ayah? ayah}) async {
    Logger.logInfo("CEKKK sebelum $params");
    if (params == null) return;
    final ayahUrl = params.lastReadAyah?.ayah?.audio ?? ayah?.audio ?? '';
    Logger.logInfo("CEKKK $ayahUrl");
    // final AudioPlayer audioPlayer = AudioPlayer();
    // await audioPlayer.setSourceUrl(ayahUrl);
    BottomSheetManager.showCustomBottomSheet(
      child: AyahPlayerBottomSheet(audioSource: UrlSource(ayahUrl)),
    );
  }
}

final menus = [
  QuranDetailMenu(
    id: QuranDetailMenuType.play.id,
    icon: const Icon(Icons.play_arrow_rounded),
    name: 'Play Murottal',
  ),
  QuranDetailMenu(
    id: QuranDetailMenuType.copy.id,
    icon: const Icon(Icons.copy),
    name: 'Copy Ayah',
  ),
  QuranDetailMenu(
    id: QuranDetailMenuType.bookmark.id,
    icon: const Icon(Icons.bookmark),
    name: 'Tambahkan ke bookmark',
  ),
  QuranDetailMenu(
    id: QuranDetailMenuType.lastread.id,
    icon: const Icon(Icons.link),
    name: 'Tandai sebagai terakhir di baca',
  ),
];

final readAyahAsmenus = [
  QuranDetailMenu(
    id: QuranDetailMenuType.readAsSurah.id,
    icon: const Icon(Icons.auto_stories),
    name: 'Baca sebagai surat',
  ),
  QuranDetailMenu(
    id: QuranDetailMenuType.readAsJuz.id,
    icon: const Icon(Icons.chrome_reader_mode),
    name: 'Baca sebagai jus',
  ),
];
