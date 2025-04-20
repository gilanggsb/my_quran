import '../../../../common/common.dart';
import '../../../features.dart';

class GetBookmarks extends UseCase<BaseResponse<List<BookmarkData>>, String?> {
  final BookmarkRepository repository;

  GetBookmarks({required this.repository});
  @override
  Future<BaseResponse<List<BookmarkData>>> call(String? params) async =>
      repository.getBookmarks(params);
}
