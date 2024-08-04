import 'package:audioplayers/audioplayers.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'detail_ayah_cubit.freezed.dart';
part 'detail_ayah_state.dart';

class DetailAyahCubit extends Cubit<DetailAyahState> {
  final GetSurahs getSurahs;
  final SaveLastReadAyah saveLastReadAyah;
  DetailAyahCubit({
    required this.getSurahs,
    required this.saveLastReadAyah,
  }) : super(const DetailAyahState.initial());

  Ayah? currentAyah;
  List<Surah> surahs = [];
  QuranDetailParams? paramsData;

  void init({
    QuranDetailParams? params,
    Ayah? ayah,
  }) async {
    currentAyah = ayah;
    paramsData = params;
    try {
      emit(const DetailAyahState.loading());
      await _getSurahs();
      emit(const DetailAyahState.loaded());
    } on String catch (e) {
      emit(DetailAyahState.failed(e));
    } catch (e) {
      emit(DetailAyahState.failed(e.toString()));
    }
  }

  Future<void> _getSurahs() async {
    final response = await getSurahs(const NoParams());
    surahs = response.data ?? [];
  }

  Future<void> onDetailPress(QuranDetailMenu menu) async {
    switch (menu.getType()) {
      case QuranDetailMenuType.lastread:
        saveAyah();
        break;
      case QuranDetailMenuType.copy:
        copyAyah();
        break;
      default:
    }
  }

  Future<void> saveAyah() async {
    try {
      LastReadAyah lastReadAyah = LastReadAyah(ayah: currentAyah, surah: surah);
      await saveLastReadAyah(lastReadAyah);
      SnackbarManager.showSuccessSnackbar(message: 'Success mark to last read');
    } catch (e) {
      Logger.logError(e.toString());
    }
  }

  Future<void> copyAyah() async {
    final copySurahData =
        '${currentAyah?.arab}\n${currentAyah?.latin}\n${currentAyah?.text}';
    AppUtils.copyLink(data: copySurahData, successMessage: 'Success copy ayah');
  }

  Future<QuranDetailParams> getParamsDataReadAsSurah() async {
    Surah? surah = paramsData?.lastReadAyah?.surah ??
        findSurah(paramsData?.lastReadAyah?.ayah?.surah);
    final pagination = AyahsThroughoutPagination(
      ayat: "1",
      surat: surah?.number,
      panjang: "10",
    );
    return QuranDetailParams(
      ayahsThroughoutPagination: pagination,
      detailType: QuranDetailTypeEnum.bySurahs,
      lastReadAyah: paramsData?.lastReadAyah,
    );
  }

  QuranDetailParams getParamsDataReadAsJuz() {
    return QuranDetailParams(
      juzNumber: paramsData?.lastReadAyah?.ayah?.juz?.parseInt,
      detailType: QuranDetailTypeEnum.byJuzs,
      lastReadAyah: paramsData?.lastReadAyah,
    );
  }

  void playAyah() {
    if (paramsData == null) return;
    final ayah = paramsData!.lastReadAyah?.ayah ?? currentAyah;
    final ayahUrl = ayah?.audio ?? '';
    globalContext.read<PlayerWidgetCubit>().playTrack(
          source: UrlSource(ayahUrl),
          newTitle: surah?.nameId,
          newSubTitle: 'Ayat : ${ayah?.ayah ?? '0'}',
        );
  }

  Surah? get surah => findSurah(currentAyah?.surah);
  // surahs.firstWhereOrNull((surah) => surah.number == currentAyah?.surah);

  Surah? findSurah(String? surahId) =>
      surahs.firstWhereOrNull((surah) => surah.number == surahId);

  bool get isSurahType =>
      paramsData?.detailType == QuranDetailTypeEnum.bySurahs;
}
