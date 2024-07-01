import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'quran_detail_state.dart';
part 'quran_detail_cubit.freezed.dart';

class QuranDetailCubit extends Cubit<QuranDetailState> {
  final GetAyahsThroughout getAyahsThroughout;
  final GetAyahsJuz getAyahsJuz;
  final GetFullAyahs getFullAyahs;
  final SurahCubit surahCubit = globalContext.read<SurahCubit>();
  QuranDetailParams? paramsData;
  ScrollManager<Ayah>? scrollManager;
  AyahsThroughoutPagination? ayahsPagination;
  List<Ayah> ayahs = [];
  bool isLoadingRetrieveMoreData = false;
  bool hasReachedEnd = false;

  QuranDetailCubit({
    required this.getAyahsThroughout,
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
      await _getAyahsThroughoutData(params.ayahsThroughoutPagination!);
      Future.delayed(const Duration(seconds: 1), _getFullAyahs);
    }
    emit(const QuranDetailState.loaded());
  }

  void initController() {
    // generate for scroll controller and scrollToName
    // eg: scrollManager?.scrollToModel(const Ayah(ayah: "5"));
    scrollManager = ScrollManager(
      compare: (ayah, ayahToScroll) {
        final surah = surahCubit.surahs
            .firstWhereOrNull((surah) => surah.number == ayah.surah);
        return surah != null && ayah.ayah == ayahToScroll.ayah;
      },
    );
    //  add listener for inifinite scroll
    scrollManager!.scrollController.addListener(() {
      if (scrollManager!.scrollController.position.pixels >=
              scrollManager!.scrollController.position.maxScrollExtent &&
          !isLoadingRetrieveMoreData &&
          !hasReachedEnd) {
        getNextAyahs();
      }
    });
  }

  void dispose() {
    scrollManager?.dispose();
  }

  FutureOr<void> _getAyahsThroughoutData(
    AyahsThroughoutPagination ayahsThroughoutPagination,
  ) async {
    try {
      emit(const QuranDetailState.loading());
      ayahsPagination = ayahsThroughoutPagination;
      final response = await getAyahsThroughout(ayahsPagination!);
      ayahs.addAll(response.data ?? []);
      emit(const QuranDetailState.loaded());
    } on String catch (e) {
      emit(QuranDetailState.failed(e));
    } catch (e) {
      emit(QuranDetailState.failed(e.toString()));
    }
  }

  void getNextAyahs() async {
    try {
      isLoadingRetrieveMoreData = true;
      emit(const QuranDetailState.loadingMoreData());
      final response = await nextAyahsApi('');
      if (response.data == null || response.data!.isEmpty) {
        hasReachedEnd = true;
      }
      ayahs.addAll(response.data ?? []);
      emit(const QuranDetailState.loaded());
    } on String catch (e) {
      emit(QuranDetailState.failed(e));
    } catch (e) {
      emit(QuranDetailState.failed(e.toString()));
    } finally {
      isLoadingRetrieveMoreData = false;
    }
  }

  void _getFullAyahs() async {
    try {
      emit(const QuranDetailState.loadingMoreData());

      final response = await getFullAyahs(ayahsPagination!);

      ayahs = [...ayahs, ...response.data!]
          .unique<Ayah, String>((data) => data.id ?? '');
      hasReachedEnd = true;
    } finally {
      emit(const QuranDetailState.loaded());
    }
  }

  FutureOr<BaseResponse<List<Ayah>?>> nextAyahsApi(String label) async {
    ayahsPagination = ayahsPagination!
        .copyWith(ayat: "${ayahsPagination!.ayat!.parseInt + 10}");
    return await getAyahsThroughout(ayahsPagination!);
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
