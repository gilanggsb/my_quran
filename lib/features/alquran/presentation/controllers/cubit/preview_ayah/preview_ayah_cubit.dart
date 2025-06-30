import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'preview_ayah_cubit.freezed.dart';
part 'preview_ayah_state.dart';

class PreviewAyahCubit extends Cubit<PreviewAyahState> {
  final GetSurahs getSurahs;
  final GetJuzs getJuzs;
  final GetFullAyahs getFullAyahs;
  final GetAyahsJuz getAyahsJuz;
  final TextEditingController searchController = TextEditingController();

  List<Ayah> ayahs = [];
  List<Surah> surahs = [];
  List<Juz> juzs = [];
  List<Surah> tempSurahs = [];
  List<Juz> tempJuzs = [];
  QuranDetailParams? paramsData;
  Surah? currentSurah;
  Juz? currentJuz;
  String previewAyahTitle = '';
  String searchText = '';

  PreviewAyahCubit({
    required this.getJuzs,
    required this.getSurahs,
    required this.getFullAyahs,
    required this.getAyahsJuz,
  }) : super(const PreviewAyahState.initial());

  void init({QuranDetailParams? params, List<Ayah>? ayahs}) async {
    try {
      ayahs = ayahs;
      paramsData = params;
      emit(const PreviewAyahState.loading());

      await Future.wait([_getJuzs(), _getSurahs()]);

      emit(const PreviewAyahState.loaded());

      final surahOrJuzNumber =
          isSurahsType ? paramsData?.ayahsThroughoutPagination?.surat : paramsData?.juzNumber;

      changeSurahOrJuz(surahOrJuzNumber);
    } on String catch (e) {
      emit(PreviewAyahState.failed(e));
    } catch (e) {
      emit(PreviewAyahState.failed(e.toString()));
    }
  }

  Future<void> _getSurahs() async {
    final response = await getSurahs(const NoParams());
    surahs = response.data ?? [];
    tempSurahs = surahs;
  }

  Future<void> _getJuzs() async {
    final response = await getJuzs(const NoParams());
    juzs = response.data ?? [];
    tempJuzs = juzs;
  }

  Future<void> _getFullAyahs() async {
    try {
      emit(const PreviewAyahState.loading());
      if (!isSurahsType) {
        final response = await getAyahsJuz(currentJuz!.number ?? 0);
        ayahs = response.data ?? [];
        return;
      }

      final ayahsPagination = paramsData?.ayahsThroughoutPagination?.copyWith(
        surat: currentSurah?.number,
      );
      final response = await getFullAyahs(ayahsPagination!);

      ayahs = response.data ?? [];
    } finally {
      emit(const PreviewAyahState.loaded());
    }
  }

  void setCurrentSurah({Ayah? ayah, int? surahNumber}) {
    emit(const PreviewAyahState.loading());
    currentSurah = surahs.firstWhereOrNull((surah) => surah.number == (ayah?.surah ?? surahNumber));
    previewAyahTitle = currentSurah?.nameId ?? "";
    emit(const PreviewAyahState.loaded());
  }

  void setCurrentJuz({Ayah? ayah, int? juzNumber}) {
    emit(const PreviewAyahState.loading());
    currentJuz = juzs.firstWhereOrNull((juz) => juz.number == (ayah?.juz ?? juzNumber));
    previewAyahTitle = currentJuz?.name ?? "";
    emit(const PreviewAyahState.loaded());
  }

  void next() {
    if (isLastPage) return;

    final surahOrJuzNumber =
        isSurahsType ? (currentSurah?.number ?? 0) + 1 : (currentJuz?.number ?? 0) + 1;

    changeSurahOrJuz(surahOrJuzNumber);
  }

  void prev() {
    if (isFirstPage) return;

    final surahOrJuzNumber =
        isSurahsType ? (currentSurah?.number ?? 0) - 1 : (currentJuz?.number ?? 0) - 1;

    changeSurahOrJuz(surahOrJuzNumber);
  }

  void filterSurahOrJuz(String text) {
    emit(const PreviewAyahState.searchingSurahOrJuz());
    if (isSurahsType) {
      tempSurahs = surahs.where((surah) => surah.nameId?.isStringContains(text) ?? false).toList();
    } else {
      tempJuzs = juzs.where((juz) => juz.name?.isStringContains(text) ?? false).toList();
    }
    emit(const PreviewAyahState.loaded());
  }

  void clearfilterSurahOrJuz() {
    emit(const PreviewAyahState.searchingSurahOrJuz());
    tempJuzs = juzs;
    tempSurahs = surahs;
    searchController.clear();
    emit(const PreviewAyahState.loaded());
  }

  void changeSurahOrJuz(int? surahOrJuzNumber) {
    if (isSurahsType) {
      setCurrentSurah(surahNumber: surahOrJuzNumber);
    } else {
      setCurrentJuz(juzNumber: surahOrJuzNumber);
    }
    _getFullAyahs();
  }

  QuranDetailParams? getNewParamsData(Ayah ayah) {
    final surahOrJuzNumber = isSurahsType ? ayah.surah : ayah.juz;
    QuranDetailParams? newParams;

    if (isSurahsType) {
      final ayahsPagination = paramsData?.ayahsThroughoutPagination?.copyWith(
        surat: surahOrJuzNumber,
      );
      newParams = paramsData?.copyWith(ayahsThroughoutPagination: ayahsPagination);
    } else {
      newParams = paramsData?.copyWith(juzNumber: surahOrJuzNumber);
    }

    return isSurahOrJuzChange(newParams) ? newParams : null;
  }

  bool isSurahOrJuzChange(QuranDetailParams? newParams) {
    return isSurahsType
        ? paramsData?.ayahsThroughoutPagination?.surat !=
            newParams?.ayahsThroughoutPagination?.surat
        : paramsData?.juzNumber != newParams?.juzNumber;
  }

  bool get isSurahsType => paramsData?.detailType == QuranDetailTypeEnum.bySurahs;

  bool get isLastPage =>
      isSurahsType
          ? surahs.lastOrNull?.number == currentSurah?.number
          : juzs.lastOrNull?.number == currentJuz?.number;

  bool get isFirstPage =>
      isSurahsType ? (currentSurah?.number ?? 0) <= 1 : (currentJuz?.number ?? 0) <= 1;

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
