import '../../../../common/common.dart';
import '../../../features.dart';

class GetAyahs extends UseCase<BaseResponse<List<Ayah>?>, AyahPagination> {
  final QuranRepository repository;

  GetAyahs({required this.repository});
  @override
  Future<BaseResponse<List<Ayah>?>> call(AyahPagination params) async =>
      repository.getAyahs(params);
}
