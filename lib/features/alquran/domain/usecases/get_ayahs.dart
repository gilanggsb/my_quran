import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

class GetAyahs extends UseCase<BaseResponse<List<Ayah>?>, AyahPagination> {
  final QuranRepository repository;

  GetAyahs({required this.repository});
  @override
  Future<BaseResponse<List<Ayah>?>> call(AyahPagination params) async =>
      repository.getAyahs(params);
}
