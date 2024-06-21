import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

part 'quran_detail_state.dart';
part 'quran_detail_cubit.freezed.dart';

class QuranDetailCubit extends Cubit<QuranDetailState> {
  final GetAyahsThroughout getAyahsThroughout;
  final GetAyahsJuz getAyahsJuz;
  List<Ayah> ayahs = [];
  QuranDetailCubit({
    required this.getAyahsThroughout,
    required this.getAyahsJuz,
  }) : super(const QuranDetailState.initial());

  void getData(QuranDetailParams params) {
    if (!params.juzNumber.isNull) return _getAyahsJuzData(params.juzNumber!);

    if (!params.ayahsThroughoutPagination.isNull) {
      _getAyahsThroughoutData(params.ayahsThroughoutPagination!);
    }
  }

  void _getAyahsThroughoutData(
      AyahsThroughoutPagination ayahsThroughoutPagination) async {
    try {
      emit(const QuranDetailState.loading());
      final response = await getAyahsThroughout(ayahsThroughoutPagination);
      ayahs = response.data ?? [];
      emit(const QuranDetailState.loaded());
    } on String catch (e) {
      emit(QuranDetailState.failed(e));
    } catch (e) {
      emit(QuranDetailState.failed(e.toString()));
    }
  }

  void _getAyahsJuzData(int juzNumber) async {
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
}
