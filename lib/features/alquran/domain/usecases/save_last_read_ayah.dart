import '../../../../common/common.dart';
import '../../../features.dart';

class SaveLastReadAyah extends UseCase<void, LastReadAyah> {
  final QuranRepository repository;

  SaveLastReadAyah({required this.repository});
  @override
  Future<void> call(LastReadAyah params) async => repository.saveLastReadAyah(params);
}
