import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

import '../../../../../../lib.dart';

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
  bool isObserverControllerAttached = false;
  BuildContext? sliverContext;

  QuranDetailCubit({required this.getAyahsJuz, required this.getFullAyahs})
    : super(const QuranDetailState.initial());

  void init({QuranDetailParams? params}) async {
    initController();
    getAyahs(params: params);
  }

  Future<void> getAyahs({QuranDetailParams? params}) async {
    paramsData = params;

    if (isSurahsType) {
      ayahsPagination = params?.ayahsThroughoutPagination;
      await _getFullAyahs();
    } else {
      await _getAyahsJuzData(params?.juzNumber ?? 0);
    }

    if (params?.lastReadAyah != null) {
      // create new instance for remove cache or lastReadAyah
      paramsData = QuranDetailParams(
        detailType: params?.detailType ?? QuranDetailTypeEnum.bySurahs,
        ayahsThroughoutPagination: params?.ayahsThroughoutPagination,
        juzNumber: params?.juzNumber,
      );
      jumpToAyah(lastReadAyah: params?.lastReadAyah);
    }
  }

  void initController() {
    if (isObserverControllerAttached) return;
    observerController = ListObserverController(controller: scrollController);
    isObserverControllerAttached = true;
  }

  void jumpToAyah({
    QuranDetailParams? params,
    int ayahsIndex = 1,
    LastReadAyah? lastReadAyah,
    int? ayahId,
    int? surahId,
  }) async {
    if (params != null) {
      ayahs = [];
      paramsData = params;
      await getAyahs(params: params);
    }

    final ayahIndex =
        lastReadAyah != null || ayahId != null
            ? ayahs.indexWhere((e) {
              // return if ayahId same with compared ayahId / lastread ayah and surah id same with lastreadsurah / surahId
              return (e.ayah == (lastReadAyah?.ayah?.ayah ?? ayahId)) &&
                  (e.surah == (lastReadAyah?.ayah?.surah ?? surahId));
            })
            : ayahsIndex;

    if (ayahIndex == -1) {
      emit(QuranDetailState.updateState());
      emit(QuranDetailState.failed("Ayat tidak ditemukan!"));
      return;
    }

    await Future.delayed(const Duration(milliseconds: 150));

    observerController.jumpTo(sliverContext: sliverContext, index: ayahIndex);
  }

  Future<void> _getFullAyahs() async {
    try {
      emit(const QuranDetailState.loading());

      final response = await getFullAyahs(ayahsPagination!);

      ayahs.addAll(response.data ?? []);
      hasReachedEnd = true;
    } on String catch (e) {
      emit(QuranDetailState.failed(e));
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

  void onJumpToAyahOkPressed({Surah? surah, Juz? juz, int? ayahId, Ayah? ayah}) {
    if (ayahId == null) return;
    final newLastReadAyah = LastReadAyah(
      surah: surah,
      ayah: ayah ?? Ayah(ayah: ayahId, juz: juz?.number, surah: surah?.number),
    );
    final newAyahsThroughoutPagination = AyahsThroughoutPagination(
      surat: surah?.number,
      ayat: 1,
      panjang: surah?.numberOfVerses,
    );
    final newParams = paramsData?.copyWith(
      lastReadAyah: newLastReadAyah,
      ayahsThroughoutPagination: isSurahsType ? newAyahsThroughoutPagination : null,
      juzNumber: juz?.number,
    );

    if (newParams == null) return;
    resetState();
    init(params: newParams);
  }

  Future<void> onRefresh() async {
    resetState();
    init();
  }

  void resetState() {
    ayahsPagination = null;
    ayahs = [];
    isLoadingRetrieveMoreData = false;
    hasReachedEnd = false;
  }

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }

  bool get isSurahsType => paramsData?.detailType == QuranDetailTypeEnum.bySurahs;
}
