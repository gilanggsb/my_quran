import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../lib.dart';

class JumpToAyahBottomSheet extends StatelessWidget {
  const JumpToAyahBottomSheet({super.key, required this.quranDetailCubit});
  final QuranDetailCubit quranDetailCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt.get<JumpToAyahCubit>()
                ..init(params: quranDetailCubit.paramsData, newAyahs: quranDetailCubit.ayahs),
      child: BlocBuilder<JumpToAyahCubit, JumpToAyahState>(
        builder: (context, state) {
          final jumpToAyahCubit = context.read<JumpToAyahCubit>();

          return SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16,
              right: 16,
              top: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Loncat ke Ayat",
                  style: AppStyle.text(
                    fontSize: 28,
                    fontColor: context.getColorExt(AppColorType.primaryLight),
                    type: TextStyleType.bold,
                  ),
                ),
                Divider(thickness: 2, color: context.getColorExt(AppColorType.primary)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "Surat : ",
                      style: AppStyle.text(
                        fontSize: 20,
                        type: TextStyleType.bold,
                        fontColor: context.getColorExt(AppColorType.text),
                      ),
                    ),
                    DropdownButton<Surah>(
                      value: jumpToAyahCubit.currentSurah,
                      dropdownColor: Colors.grey[900],
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: context.getColorExt(AppColorType.text),
                      ),
                      style: TextStyle(color: context.getColorExt(AppColorType.text), fontSize: 18),
                      onChanged: jumpToAyahCubit.setCurrentSurah,
                      items:
                          jumpToAyahCubit.surahDropdownList.map((surah) {
                            return DropdownMenuItem<Surah>(
                              value: surah,
                              child: Text(
                                surah.nameId ?? "",
                                style: AppStyle.text(
                                  fontColor: context.getColorExt(AppColorType.text),
                                ),
                              ),
                            );
                          }).toList(),
                    ),
                  ],
                ),
                const SizedBox(height: 38),
                Text(
                  "Masukkan nomor ayat antara ${jumpToAyahCubit.rangeAyah}",
                  style: AppStyle.text(
                    fontSize: 18,
                    fontColor: context.getColorExt(AppColorType.text),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 14),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.getWidth * 0.25),
                  child: DefaultTextField(
                    textAlign: TextAlign.center,
                    contentPadding: EdgeInsets.zero,
                    hintText: jumpToAyahCubit.rangeAyah,
                    controller: jumpToAyahCubit.searchController,
                    filledColor: context.getColorExt(AppColorType.transparent),
                    hintTextStyle: AppStyle.text(fontColor: context.getColorExt(AppColorType.text)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: context.getColorExt(AppColorType.text)!),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: context.getColorExt(AppColorType.text)!),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: DefaultButton.elevatedButton(
                        borderRadius: 10,
                        borderColor: context.getColorExt(AppColorType.primary),
                        activeColor: context.getColorExt(AppColorType.background),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        onPress: () => BottomSheetManager.closeCurrentBottomSheet(context: context),
                        text: "Batal",
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: jumpToAyahCubit.searchController,
                        builder: (context, searchController, child) {
                          return DefaultButton.elevatedButton(
                            borderRadius: 10,
                            disabled: searchController.text.tryParseInt == null,
                            disableColor: context.getColorExt(AppColorType.primaryDark2),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            onPress: () {
                              final ayahId = searchController.text.tryParseInt;
                              onOKPressed(context, ayahId, jumpToAyahCubit: jumpToAyahCubit);
                            },
                            text: "OK",
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void onOKPressed(BuildContext context, int? ayahId, {JumpToAyahCubit? jumpToAyahCubit}) {
    if (ayahId == null) return;
    BottomSheetManager.closeCurrentBottomSheet(context: context);
    quranDetailCubit.onJumpToAyahOkPressed(
      surah: jumpToAyahCubit?.currentSurah,
      juz: jumpToAyahCubit?.currentJuz,
      ayahId: ayahId,
    );
  }
}
