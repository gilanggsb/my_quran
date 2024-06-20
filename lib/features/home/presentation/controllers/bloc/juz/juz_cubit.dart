import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

part 'juz_state.dart';
part 'juz_cubit.freezed.dart';

class JuzCubit extends Cubit<JuzState> {
  final GetJuzs getJuzs;
  List<Juz> juzs = [];
  JuzCubit({required this.getJuzs}) : super(const JuzState.initial());

  void getData() async {
    try {
      emit(const JuzState.loading());
      final response = await getJuzs(const NoParams());
      juzs = response.data ?? [];
      emit(const JuzState.loaded());
    } on String catch (e) {
      emit(JuzState.failed(e));
    }
  }
}
