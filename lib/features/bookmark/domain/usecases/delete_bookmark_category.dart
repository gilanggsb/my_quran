import '../../../../common/common.dart';
import '../../../features.dart';

class DeleteBookmarkCategory extends UseCase<BaseResponse<bool>, String> {
  final BookmarkRepository repository;

  DeleteBookmarkCategory({required this.repository});
  @override
  Future<BaseResponse<bool>> call(String params) async => repository.deleteBookmarkCategory(params);
}
