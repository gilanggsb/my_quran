import '../../../../common/common.dart';
import '../../../features.dart';

class GetJuz extends UseCase<BaseResponse<Juz?>, int> {
  final QuranRepository repository;

  GetJuz({required this.repository});
  @override
  Future<BaseResponse<Juz?>> call(int params) async => repository.getJuz(params);
}
