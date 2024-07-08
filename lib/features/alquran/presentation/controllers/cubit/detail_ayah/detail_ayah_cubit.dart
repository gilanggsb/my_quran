import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'detail_ayah_cubit.freezed.dart';
part 'detail_ayah_state.dart';

class DetailAyahCubit extends Cubit<DetailAyahState> {
  final GetSurahs getSurahs;
  DetailAyahCubit({required this.getSurahs})
      : super(const DetailAyahState.initial());
  Ayah? currentAyah;
  List<Surah> surahs = [];
  QuranDetailParams? params;

  void init({
    QuranDetailParams? params,
    Ayah? ayah,
  }) async {
    currentAyah = ayah;
    params = params;
    try {
      emit(const DetailAyahState.loading());
      await _getSurahs();
      emit(const DetailAyahState.loaded());
    } on String catch (e) {
      emit(DetailAyahState.failed(e));
    } catch (e) {
      emit(DetailAyahState.failed(e.toString()));
    }
  }

  Future<void> _getSurahs() async {
    final response = await getSurahs(const NoParams());
    surahs = response.data ?? [];
  }

  Future<void> onDetailPress(QuranDetailMenu menu) async {
    switch (menu.getType()) {
      case QuranDetailMenuType.copy:
        copyAyah();
        break;
      default:
    }
  }

  Future<void> copyAyah() async {
    BottomSheetManager.closeCurrentBottomSheet();
    final copySurahData =
        '${currentAyah?.arab}\n${currentAyah?.latin}\n${currentAyah?.text}';
    AppUtils.copyLink(data: copySurahData, successMessage: 'Success copy ayah');
  }

  Surah? get surah =>
      surahs.firstWhereOrNull((surah) => surah.number == currentAyah?.surah);

  bool get isSurahType => params?.detailType == QuranDetailTypeEnum.bySurahs;
}
