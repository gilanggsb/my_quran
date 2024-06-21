import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

class GetSurahs extends UseCase<BaseResponse<List<Surah>?>, NoParams> {
  final QuranRepository repository;

  GetSurahs({required this.repository});

  @override
  Future<BaseResponse<List<Surah>?>> call(params) async =>
      await repository.getSurahs();
}
