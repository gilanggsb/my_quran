import 'dart:async';

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
  HomeBloc({required this.getLastReadAyah, required this.repository})
      : super(const _Initial()) {
    on<_GetData>(_getData);
  }


  FutureOr<void> _getData(event, emit) async {
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

  void _emitFailed(Emitter<HomeState> emit, String message) {
    emit(HomeState.failed(message));
  }
}
