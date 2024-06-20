import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_quran/features/features.dart';

import 'package:my_quran/common/common.dart';

part 'surah_state.dart';
part 'surah_cubit.freezed.dart';

class SurahCubit extends Cubit<SurahState> {
  final GetSurahs getSurahs;
  List<Surah> surahs = [];
  SurahCubit({required this.getSurahs}) : super(const SurahState.initial());

  void getData() async {
    try {
      emit(const SurahState.loading());
      final response = await getSurahs(const NoParams());
      surahs = response.data ?? [];
      emit(const SurahState.loaded());
    } on String catch (e) {
      emit(SurahState.failed(e));
    }
  }
}
