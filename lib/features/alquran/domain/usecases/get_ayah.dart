import '../../../../common/common.dart';
import '../../../features.dart';

class GetAyah extends UseCase<BaseResponse<Ayah?>, int> {
  final QuranRepository repository;

  GetAyah({required this.repository});
  @override
  Future<BaseResponse<Ayah?>> call(
    int params,
  ) async =>
      repository.getAyah(params);
}
