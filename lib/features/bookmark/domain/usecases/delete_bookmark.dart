import '../../../../common/common.dart';
import '../../../features.dart';

class DeleteBookmark extends UseCase<BaseResponse<bool>, int> {
  final BookmarkRepository repository;

  DeleteBookmark({required this.repository});
  @override
  Future<BaseResponse<bool>> call(int params) async =>
      repository.deleteBookmark(params);
}
