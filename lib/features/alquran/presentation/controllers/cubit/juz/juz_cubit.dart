import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'juz_cubit.freezed.dart';
part 'juz_state.dart';

class JuzCubit extends Cubit<JuzState> {
  final GetJuzs getJuzs;
  List<Juz> originJuz = [];
  List<Juz> juzs = [];
  JuzCubit({required this.getJuzs}) : super(const JuzState.initial());

  void getData() async {
    try {
      emit(const JuzState.loading());
      final response = await getJuzs(const NoParams());
      juzs = response.data ?? [];
      originJuz = response.data ?? [];
      emit(const JuzState.loaded());
    } on String catch (e) {
      emit(JuzState.failed(e));
    } catch (e) {
      emit(JuzState.failed(e.toString()));
    }
  }

  void searchJuz(String query) async {
    try {
      emit(const JuzState.loading());
      // await Future.delayed(const Duration(milliseconds: 500));
      juzs =
          originJuz.where((juz) => juz.name.isStringContains(query)).toList();
      emit(const JuzState.loaded());
    } on String catch (e) {
      emit(JuzState.failed(e));
    } catch (e) {
      emit(JuzState.failed(e.toString()));
    }
  }
}
