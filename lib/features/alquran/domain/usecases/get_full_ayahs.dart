import '../../../../common/common.dart';
import '../../../features.dart';

class GetFullAyahs
    extends UseCase<BaseResponse<List<Ayah>?>, AyahsThroughoutPagination> {
  final QuranRepository repository;

  GetFullAyahs({required this.repository});
  @override
  Future<BaseResponse<List<Ayah>?>> call(
    AyahsThroughoutPagination params,
  ) async =>
      repository.getFullAyahs(params);
}
