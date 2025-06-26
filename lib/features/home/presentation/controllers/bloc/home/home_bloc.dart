import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeRepository repository;
  final GetLastReadAyah getLastReadAyah;
  LastReadAyah? lastReadAyah;
  final TextEditingController searchController = TextEditingController();

  HomeBloc({required this.getLastReadAyah, required this.repository})
    : super(const HomeInitialState()) {
    on<HomeGetDataEvent>(_getData);
    on<HomeSearchSurahJuzEvent>(_searchSurahJuz);
    on<HomeClearSearchEvent>(_clearSearch);
  }

  FutureOr<void> _getData(HomeEvent event, Emitter<HomeState> emit) async {
    try {
      emit(const HomeState.loading());
      await Future.delayed(const Duration(seconds: 1));
      lastReadAyah = await getLastReadAyah(const NoParams());
      emit(const HomeState.loaded());
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  FutureOr<void> _searchSurahJuz(HomeSearchSurahJuzEvent event, emit) async {
    try {
      emit(const HomeState.searching());
      // await Future.delayed(const Duration(milliseconds: 500));
      emit(HomeState.searchedSurahJuz(event.query));
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  FutureOr<void> _clearSearch(HomeClearSearchEvent event, emit) async {
    try {
      emit(const HomeState.searching());
      // await Future.delayed(const Duration(milliseconds: 500));
      searchController.clear();
      emit(const HomeState.searchedSurahJuz(""));
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  void _emitFailed(Emitter<HomeState> emit, String message) {
    emit(HomeState.failed(message));
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
