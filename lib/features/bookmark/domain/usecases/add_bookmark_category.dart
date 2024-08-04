import '../../../../common/common.dart';
import '../../../features.dart';

class AddBookmarkCategory
    extends UseCase<BaseResponse<bool>, BookmarkCategory> {
  final BookmarkRepository repository;

  AddBookmarkCategory({required this.repository});
  @override
  Future<BaseResponse<bool>> call(BookmarkCategory params) async =>
      repository.addBookmarkCategory(params);
}
