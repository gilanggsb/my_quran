import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'quran_detail_cubit.freezed.dart';
part 'quran_detail_state.dart';

class QuranDetailCubit extends Cubit<QuranDetailState> {
  final GetAyahsJuz getAyahsJuz;
  final GetFullAyahs getFullAyahs;
  final SurahCubit surahCubit = globalContext.read<SurahCubit>();
  QuranDetailParams? paramsData;
  AyahsThroughoutPagination? ayahsPagination;
  List<Ayah> ayahs = [];
  bool isLoadingRetrieveMoreData = false;
  bool hasReachedEnd = false;

  ScrollController scrollController = ScrollController();
  late ListObserverController observerController;
  BuildContext? sliverContext;

  QuranDetailCubit({
    required this.getAyahsJuz,
    required this.getFullAyahs,
  }) : super(const QuranDetailState.initial());

  void getData(QuranDetailParams params) async {
    paramsData = params;
    initController();
    if (!params.juzNumber.isNull) {
      await _getAyahsJuzData(params.juzNumber!);
    }

    if (!params.ayahsThroughoutPagination.isNull) {
      ayahsPagination = params.ayahsThroughoutPagination;
      _getFullAyahs();
    }
  }

  void initController() {
    observerController = ListObserverController(
      controller: scrollController,
    );
  }

  void jumpToAyah(int index) {
    observerController.animateTo(
      sliverContext: sliverContext,
      index: index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void dispose() {
    observerController.controller?.dispose();
  }

  void _getFullAyahs() async {
    try {
      emit(const QuranDetailState.loading());

      final response = await getFullAyahs(ayahsPagination!);

      ayahs.addAll(response.data ?? []);
      hasReachedEnd = true;
    } finally {
      emit(const QuranDetailState.loaded());
    }
  }

  FutureOr<void> _getAyahsJuzData(int juzNumber) async {
    try {
      emit(const QuranDetailState.loading());
      final response = await getAyahsJuz(juzNumber);
      ayahs = response.data ?? [];
      emit(const QuranDetailState.loaded());
    } on String catch (e) {
      emit(QuranDetailState.failed(e));
    } catch (e) {
      emit(QuranDetailState.failed(e.toString()));
    }
  }

  Surah? findSurah(Ayah ayah) {
    return surahCubit.surahs
        .firstWhereOrNull((surah) => surah.number == ayah.surah);
  }
}
