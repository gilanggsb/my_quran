import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'surah_cubit.freezed.dart';
part 'surah_state.dart';

class SurahCubit extends Cubit<SurahState> {
  final GetSurahs getSurahs;
  List<Surah> originSurahs = [];
  List<Surah> surahs = [];
  SurahCubit({required this.getSurahs}) : super(const SurahState.initial());

  void getData() async {
    try {
      emit(const SurahState.loading());
      final response = await getSurahs(const NoParams());
      surahs = response.data ?? [];
      originSurahs = response.data ?? [];
      emit(const SurahState.loaded());
    } on String catch (e) {
      emit(SurahState.failed(e));
    } catch (e) {
      emit(SurahState.failed(e.toString()));
    }
  }

  void searchJuz(String query) async {
    try {
      emit(const SurahState.loading());
      // await Future.delayed(const Duration(milliseconds: 500));
      surahs = originSurahs.where((surah) => surah.nameId.isStringContains(query)).toList();
      emit(const SurahState.loaded());
    } on String catch (e) {
      emit(SurahState.failed(e));
    } catch (e) {
      emit(SurahState.failed(e.toString()));
    }
  }
}
