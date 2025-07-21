import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'jump_to_ayah_cubit.freezed.dart';
part 'jump_to_ayah_state.dart';

class JumpToAyahCubit extends Cubit<JumpToAyahState> {
  final GetSurahs getSurahs;
  final GetJuzs getJuzs;
  final GetFullAyahs getFullAyahs;
  final GetAyahsJuz getAyahsJuz;
  final TextEditingController searchController = TextEditingController();

  List<Ayah> ayahs = [];
  List<Surah> surahs = [];
  List<Juz> juzs = [];
  QuranDetailParams? paramsData;
  Surah? currentSurah;
  Juz? currentJuz;
  String rangeAyah = '';
  List<Surah> surahDropdownList = [];

  JumpToAyahCubit({
    required this.getJuzs,
    required this.getSurahs,
    required this.getFullAyahs,
    required this.getAyahsJuz,
  }) : super(const JumpToAyahState.initial());

  void init({QuranDetailParams? params, List<Ayah>? newAyahs}) async {
    try {
      ayahs = newAyahs.clone();
      paramsData = params;
      emit(const JumpToAyahState.loading());

      await Future.wait([_getJuzs(), _getSurahs()]);

      await _getSurahsDropdownList();
      setRangeAyah();

      emit(const JumpToAyahState.loaded());
    } on String catch (e) {
      emit(JumpToAyahState.failed(e));
    } catch (e) {
      emit(JumpToAyahState.failed(e.toString()));
    }
  }

  Future<void> _getSurahsDropdownList() async {
    final surahId = ayahs.first.surah;
    surahDropdownList = surahs.clone();
    if (isSurahsType) {
      currentSurah = surahDropdownList.firstWhereOrNull((e) => e.number == surahId);
      return;
    }

    currentJuz = juzs.firstWhereOrNull((e) => e.number == paramsData?.juzNumber);
    if (currentJuz == null) return;

    surahDropdownList =
        surahs.where((e) {
          return (e.number == currentJuz?.surahIdStart) || (e.number == currentJuz?.surahIdEnd);
        }).toList();

    currentSurah = surahDropdownList.firstWhereOrNull((e) => e.number == surahId);
  }

  Future<void> _getSurahs() async {
    final response = await getSurahs(const NoParams());
    surahs = response.data ?? [];
  }

  Future<void> _getJuzs() async {
    final response = await getJuzs(const NoParams());
    juzs = response.data ?? [];
  }

  void setCurrentSurah(Surah? newSurah) {
    emit(const JumpToAyahState.loading());
    currentSurah = newSurah;
    setRangeAyah();
    emit(const JumpToAyahState.loaded());
  }

  void setRangeAyah({String? newRangeAyah}) {
    int? maxAyah = currentSurah?.numberOfVerses;
    int? startAyah = 1;
    rangeAyah = newRangeAyah ?? "$startAyah - $maxAyah";

    if (isSurahsType) return;

    final lastAyahInCurrentSurah = ayahs.lastWhereOrNull((e) => e.surah == currentSurah?.number);
    if (lastAyahInCurrentSurah != null) {
      maxAyah = lastAyahInCurrentSurah.ayah;
    }

    final firstAyahInCurrentSurah = ayahs.firstWhereOrNull((e) => e.surah == currentSurah?.number);
    if (firstAyahInCurrentSurah != null) {
      startAyah = firstAyahInCurrentSurah.ayah;
    }

    rangeAyah = "$startAyah - $maxAyah";
  }

  void setCurrentJuz({Ayah? ayah, int? juzNumber}) {
    emit(const JumpToAyahState.loading());
    currentJuz = juzs.firstWhereOrNull((juz) => juz.number == (ayah?.juz ?? juzNumber));
    emit(const JumpToAyahState.loaded());
  }

  bool get isSurahsType => paramsData?.detailType == QuranDetailTypeEnum.bySurahs;

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
