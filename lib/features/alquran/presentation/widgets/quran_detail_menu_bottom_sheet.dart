import 'package:flutter/material.dart';

import '../../../../lib.dart';

class QuranDetailMenuBottomSheet extends StatelessWidget {
  const QuranDetailMenuBottomSheet({super.key, required this.quranDetailCubit});

  final QuranDetailCubit quranDetailCubit;

  @override
  Widget build(BuildContext context) {
    final currentMenus = getMenus(quranDetailCubit.isSurahsType);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: currentMenus.length,
      itemBuilder: (ctx, index) {
        final menu = currentMenus[index];
        return ListTile(
          leading: menu.icon,
          title: DefaultText(menu.name),
          onTap: () => onDetailMenuTap(menu),
        );
      },
    );
  }

  Future<void> onDetailMenuTap(QuranDetailMenu menu) async {
    BottomSheetManager.closeCurrentBottomSheet();
    switch (menu.getType()) {
      case QuranDetailMenuType.previewAyah:
        BottomSheetManager.showCustomBottomSheet(
          child: PreviewAyahBottomSheet(quranDetailCubit: quranDetailCubit),
        );
        break;
      case QuranDetailMenuType.jumpToAyah:
        BottomSheetManager.showCustomBottomSheet(
          isScrollControlled: true,
          child: JumpToAyahBottomSheet(quranDetailCubit: quranDetailCubit),
        );
        break;
      case QuranDetailMenuType.play:
        quranDetailCubit.playSurah();
        break;
      case QuranDetailMenuType.tafseer:
        BottomSheetManager.showCustomBottomSheet(
          child: TafseerSurahBottomSheet(quranDetailCubit: quranDetailCubit),
        );
        break;
      default:
    }
  }
}

List<QuranDetailMenu> getMenus(bool isSurahType) {
  return [
    QuranDetailMenu(
      id: QuranDetailMenuType.previewAyah.id,
      icon: Icon(
        Icons.preview_sharp,
        color: globalContext.getColorExt(AppColorType.primary),
        size: 30,
      ),
      name: 'Preview surat',
    ),
    QuranDetailMenu(
      id: QuranDetailMenuType.jumpToAyah.id,
      icon: Icon(
        Icons.search_outlined,
        color: globalContext.getColorExt(AppColorType.primary),
        size: 30,
      ),
      name: 'Loncat ke ayat',
    ),
    QuranDetailMenu(
      id: QuranDetailMenuType.play.id,
      icon: Icon(
        Icons.play_arrow,
        size: 30,
        color: globalContext.getColorExt(AppColorType.primary),
      ),
      name: 'Putar surat',
    ),
    if (isSurahType)
      QuranDetailMenu(
        id: QuranDetailMenuType.tafseer.id,
        icon: Icon(
          Icons.menu_book_outlined,
          size: 26,
          color: globalContext.getColorExt(AppColorType.primary),
        ).paddingOnly(left: 4),
        name: 'Tafsir surat',
      ),
  ];
}
