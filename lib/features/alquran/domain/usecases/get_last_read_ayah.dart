import '../../../../common/common.dart';
import '../../../features.dart';

class GetLastReadAyah extends UseCase<LastReadAyah?, NoParams> {
  final QuranRepository repository;

  GetLastReadAyah({required this.repository});
  @override
  Future<LastReadAyah?> call(NoParams params) async =>
      repository.getLastReadAyah();
}
