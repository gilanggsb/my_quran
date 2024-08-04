import '../../../../common/common.dart';
import '../../../features.dart';

class GetBookmarks extends UseCase<BaseResponse<List<BookmarkData>>, int?> {
  final BookmarkRepository repository;

  GetBookmarks({required this.repository});
  @override
  Future<BaseResponse<List<BookmarkData>>> call(int? params) async =>
      repository.getBookmarks(params);
}
