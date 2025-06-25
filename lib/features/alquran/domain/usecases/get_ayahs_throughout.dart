import '../../../../common/common.dart';
import '../../../features.dart';

class GetAyahsThroughout extends UseCase<BaseResponse<List<Ayah>?>, AyahsThroughoutPagination> {
  final QuranRepository repository;

  GetAyahsThroughout({required this.repository});
  @override
  Future<BaseResponse<List<Ayah>?>> call(AyahsThroughoutPagination params) async =>
      repository.getAyahsThroughout(params);
}
