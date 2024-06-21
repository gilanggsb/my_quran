import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

class GetAyahsJuz extends UseCase<BaseResponse<List<Ayah>?>, int> {
  final QuranRepository repository;

  GetAyahsJuz({required this.repository});
  @override
  Future<BaseResponse<List<Ayah>?>> call(int params) async =>
      repository.getAyahsJuz(params);
}
