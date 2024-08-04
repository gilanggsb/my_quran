import '../../../../common/common.dart';
import '../../../features.dart';

class DeleteBookmarkCategory extends UseCase<BaseResponse<bool>, int> {
  final BookmarkRepository repository;

  DeleteBookmarkCategory({required this.repository});
  @override
  Future<BaseResponse<bool>> call(int params) async =>
      repository.deleteBookmarkCategory(params);
}
