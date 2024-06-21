import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

class GetSurah extends UseCase<BaseResponse<Surah?>, int> {
  final QuranRepository repository;

  GetSurah({required this.repository});
  @override
  Future<BaseResponse<Surah?>> call(int params) async =>
      repository.getSurah(params);
}
