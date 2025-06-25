import '../../../../common/common.dart';
import '../../../features.dart';

class GetBookmarkCategories extends UseCase<BaseResponse<List<BookmarkCategory>>, NoParams> {
  final BookmarkRepository repository;

  GetBookmarkCategories({required this.repository});
  @override
  Future<BaseResponse<List<BookmarkCategory>>> call(NoParams params) async =>
      repository.getBookmarkCategories();
}
