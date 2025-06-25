import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
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

  void init(QuranDetailParams params) async {
    initController();
    getAyahs(params);
  }

  Future<void> getAyahs(QuranDetailParams params) async {
    paramsData = params;

    if (!isSurahsType) {
      await _getAyahsJuzData(params.juzNumber!);
    } else {
      ayahsPagination = params.ayahsThroughoutPagination;
      await _getFullAyahs();
    }

    if (params.lastReadAyah != null) {
      paramsData = QuranDetailParams(
        detailType: params.detailType,
        ayahsThroughoutPagination: params.ayahsThroughoutPagination,
        juzNumber: params.juzNumber,
      );
      jumpToAyah(lastReadAyah: params.lastReadAyah);
    }
  }

  void initController() {
    observerController = ListObserverController(
      controller: scrollController,
    );
  }

  void jumpToAyah({
    QuranDetailParams? params,
    int ayahsIndex = 1,
    LastReadAyah? lastReadAyah,
  }) async {
    if (params != null) {
      ayahs = [];
      paramsData = params;
      await getAyahs(params);
    }

    final ayahIndex = lastReadAyah != null
        ? ayahs.indexWhere(
            (ayah) => ayah.ayah == lastReadAyah.ayah?.ayah,
          )
        : ayahsIndex;

    await Future.delayed(const Duration(milliseconds: 150));

    observerController.animateTo(
      sliverContext: sliverContext,
      index: ayahIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  Future<void> _getFullAyahs() async {
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
    return surahCubit.surahs.firstWhereOrNull((surah) => surah.number == (ayah.surah ?? 0));
  }

  Surah? get surah => findSurah(ayahs.first);

  void playSurah() {
    final ayahUrl = surah?.audioUrl;
    if (ayahUrl == null) return;
    globalContext.read<PlayerWidgetCubit>().playTrack(
          source: UrlSource(ayahUrl),
          newTitle: surah?.nameId,
          newSubTitle: '${surah?.translateRevelationId} • ${surah?.numberOfVerses} Ayat',
        );
  }

  @override
  Future<void> close() {
    observerController.controller?.dispose();
    return super.close();
  }

  bool get isSurahsType => paramsData?.detailType == QuranDetailTypeEnum.bySurahs;
}
