import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

class GetJuz extends UseCase<BaseResponse<Juz?>, int> {
  final QuranRepository repository;

  GetJuz({required this.repository});
  @override
  Future<BaseResponse<Juz?>> call(int params) async =>
      repository.getJuz(params);
}
