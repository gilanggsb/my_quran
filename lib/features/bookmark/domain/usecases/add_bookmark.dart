import '../../../../common/common.dart';
import '../../../features.dart';

class AddBookmark extends UseCase<BaseResponse<bool>, BookmarkData> {
  final BookmarkRepository repository;

  AddBookmark({required this.repository});
  @override
  Future<BaseResponse<bool>> call(BookmarkData params) async =>
      repository.addBookmark(params);
}
