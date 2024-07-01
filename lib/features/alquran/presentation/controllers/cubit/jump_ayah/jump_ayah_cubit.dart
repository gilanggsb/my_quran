import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'jump_ayah_state.dart';
part 'jump_ayah_cubit.freezed.dart';

class JumpAyahCubit extends Cubit<JumpAyahState> {
  final GetSurahs getSurahs;
  final GetJuzs getJuzs;
  final GetFullAyahs getFullAyahs;
  final GetAyahsJuz getAyahsJuz;

  List<Ayah> ayahs = [];
  List<Surah> surahs = [];
  List<Juz> juzs = [];
  QuranDetailParams? paramsData;
  Surah? currentSurah;
  Juz? currentJuz;
  String jumpAyahTitle = '';

  JumpAyahCubit({
    required this.getJuzs,
    required this.getSurahs,
    required this.getFullAyahs,
    required this.getAyahsJuz,
  }) : super(const JumpAyahState.initial());

  void init({
    QuranDetailParams? params,
    List<Ayah>? ayahs,
  }) async {
    try {
      ayahs = ayahs;
      paramsData = params;
      emit(const JumpAyahState.loading());
      await Future.wait([
        _getJuzs(),
        _getSurahs(),
      ]);

      if (isSurahsType) {
        setCurrentSurah(
          surahNumber: paramsData?.ayahsThroughoutPagination?.surat?.parseInt,
        );
      } else {
        setCurrentJuz(juzNumber: paramsData?.juzNumber);
      }
      emit(const JumpAyahState.loaded());
      _getFullAyahs();
    } on String catch (e) {
      emit(JumpAyahState.failed(e));
    } catch (e) {
      emit(JumpAyahState.failed(e.toString()));
    }
  }

  Future<void> _getSurahs() async {
    final response = await getSurahs(const NoParams());
    surahs = response.data ?? [];
  }

  Future<void> _getJuzs() async {
    final response = await getJuzs(const NoParams());
    juzs = response.data ?? [];
  }

  Future<void> _getFullAyahs() async {
    try {
      emit(const JumpAyahState.loading());
      if (!isSurahsType) {
        final response = await getAyahsJuz(currentJuz!.number!.parseInt);
        ayahs = response.data ?? [];
        return;
      }

      final ayahsPagination = paramsData?.ayahsThroughoutPagination
          ?.copyWith(surat: currentSurah?.number);
      final response = await getFullAyahs(ayahsPagination!);

      ayahs = response.data ?? [];
    } finally {
      emit(const JumpAyahState.loaded());
    }
  }

  void setCurrentSurah({Ayah? ayah, int? surahNumber}) {
    emit(const JumpAyahState.loading());
    currentSurah = surahs.firstWhereOrNull(
      (surah) => surah.number == (ayah?.surah ?? "$surahNumber"),
    );
    jumpAyahTitle = currentSurah?.nameId ?? "";
    emit(const JumpAyahState.loaded());
  }

  void setCurrentJuz({Ayah? ayah, int? juzNumber}) {
    emit(const JumpAyahState.loading());
    currentJuz = juzs.firstWhereOrNull(
      (juz) => juz.number == (ayah?.juz ?? "$juzNumber"),
    );
    jumpAyahTitle = currentJuz?.name ?? "";
    emit(const JumpAyahState.loaded());
  }

  void next() {
    if (isLastPage) return;

    if (isSurahsType) {
      setCurrentSurah(surahNumber: (currentSurah?.number ?? "0").parseInt + 1);
    } else {
      setCurrentJuz(juzNumber: (currentJuz?.number ?? "0").parseInt + 1);
    }

    _getFullAyahs();
  }

  void prev() {
    if (isFirstPage) return;

    if (isSurahsType) {
      setCurrentSurah(surahNumber: (currentSurah?.number ?? "0").parseInt - 1);
    } else {
      setCurrentJuz(juzNumber: (currentJuz?.number ?? "0").parseInt - 1);
    }

    _getFullAyahs();
  }

  bool get isSurahsType =>
      paramsData?.detailType == QuranDetailTypeEnum.bySurahs;

  bool get isLastPage => isSurahsType
      ? surahs.lastOrNull?.number == currentSurah?.number
      : juzs.lastOrNull?.number == currentJuz?.number;

  bool get isFirstPage => isSurahsType
      ? (currentSurah?.number ?? "1").parseInt <= 1
      : (currentJuz?.number ?? "1").parseInt <= 1;
}
