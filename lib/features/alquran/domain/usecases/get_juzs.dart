import '../../../../common/common.dart';
import '../../../features.dart';

class GetJuzs extends UseCase<BaseResponse<List<Juz>?>, NoParams> {
  final QuranRepository repository;

  GetJuzs({required this.repository});
  @override
  Future<BaseResponse<List<Juz>?>> call(NoParams params) async =>
      repository.getJuzs();
}
