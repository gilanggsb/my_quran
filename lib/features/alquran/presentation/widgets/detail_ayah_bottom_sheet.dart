import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../lib.dart';

class DetailAyahBottomSheet extends StatelessWidget {
  const DetailAyahBottomSheet({super.key, this.quranDetailParams, this.ayah});

  final QuranDetailParams? quranDetailParams;
  final Ayah? ayah;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => getIt.get<DetailAyahCubit>()..init(ayah: ayah, params: quranDetailParams),
      child: BlocConsumer<DetailAyahCubit, DetailAyahState>(
        listener: (context, state) {
          switch (state) {
            case DetailAyahFailedState(:final message):
              SnackbarManager.showErrorSnackbar(message: message);
              break;
            case DetailAyahLastReadMarkedState(:final message):
              BottomSheetManager.closeCurrentBottomSheet();
              SnackbarManager.showSuccessSnackbar(message: message);
              if (globalContext.mounted) {
                globalContext.read<HomeBloc>().add(const HomeEvent.getData());
              }
            default:
          }
        },
        builder: (context, state) {
          final isLoading = switch (state) {
            DetailAyahLoadingState() => true,
            _ => false,
          };
          final detailAyahCubit = context.read<DetailAyahCubit>();
          final surah = detailAyahCubit.surah;
          final title = "QS. ${surah?.nameId ?? ''}: Ayat ${ayah?.ayah ?? ''}";
          final currentMenus = quranDetailParams?.lastReadAyah != null ? readAyahAsmenus : menus;

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
                  Divider(thickness: 2, color: context.getColorExt(AppColorType.primary)),
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

  Future<void> onDetailMenuTap(BuildContext context, QuranDetailMenu menu) async {
    final detailAyahCubit = context.read<DetailAyahCubit>();
    switch (menu.getType()) {
      case QuranDetailMenuType.lastread:
        DialogManager.showConfirmDialog(
          title: "Tandai terakhir dibaca",
          message: "Apakah anda yakin ingin menandai ini sebagai terakhir dibaca?",
          onOKPress: detailAyahCubit.saveAyahToLastRead,
        );
        break;
      case QuranDetailMenuType.copy:
        BottomSheetManager.closeCurrentBottomSheet();
        detailAyahCubit.copyAyah();
        break;
      case QuranDetailMenuType.play:
        BottomSheetManager.closeCurrentBottomSheet();
        detailAyahCubit.playAyah();
        break;
      case QuranDetailMenuType.bookmark:
        BottomSheetManager.closeCurrentBottomSheet();
        BottomSheetManager.showCustomBottomSheet(
          padding: const EdgeInsets.all(8),
          child: BookmarkCategoryBottomSheet(ayah: detailAyahCubit.currentAyah),
        );
        break;
      case QuranDetailMenuType.readAsSurah:
        BottomSheetManager.closeCurrentBottomSheet();
        detailAyahCubit.getParamsDataReadAsSurah().then(
          (paramsData) =>
              context.mounted ? context.pushRoute(QuranDetailRoute(params: paramsData)) : null,
        );
        // context.pushRoute(QuranDetailRoute(params: paramsData));
        break;
      case QuranDetailMenuType.readAsJuz:
        BottomSheetManager.closeCurrentBottomSheet();
        final paramsData = detailAyahCubit.getParamsDataReadAsJuz();
        context.pushRoute(QuranDetailRoute(params: paramsData));
        break;
      default:
    }
  }
}

final menus = [
  QuranDetailMenu(
    id: QuranDetailMenuType.play.id,
    icon: Icon(Icons.play_arrow_rounded, color: globalContext.getColorExt(AppColorType.primary)),
    name: 'Play Ayat',
  ),
  QuranDetailMenu(
    id: QuranDetailMenuType.copy.id,
    icon: Icon(Icons.copy, color: globalContext.getColorExt(AppColorType.primary)),
    name: 'Copy Ayat',
  ),
  QuranDetailMenu(
    id: QuranDetailMenuType.bookmark.id,
    icon: Icon(Icons.bookmark, color: globalContext.getColorExt(AppColorType.primary)),
    name: 'Tambahkan ke bookmark',
  ),
  QuranDetailMenu(
    id: QuranDetailMenuType.lastread.id,
    icon: Icon(Icons.link, color: globalContext.getColorExt(AppColorType.primary)),
    name: 'Tandai sebagai terakhir di baca',
  ),
];

final readAyahAsmenus = [
  QuranDetailMenu(
    id: QuranDetailMenuType.readAsSurah.id,
    icon: Icon(Icons.auto_stories, color: globalContext.getColorExt(AppColorType.primary)),
    name: 'Baca sebagai surat',
  ),
  QuranDetailMenu(
    id: QuranDetailMenuType.readAsJuz.id,
    icon: Icon(Icons.chrome_reader_mode, color: globalContext.getColorExt(AppColorType.primary)),
    name: 'Baca sebagai jus',
  ),
];
