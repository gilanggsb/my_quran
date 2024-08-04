import '../../../../common/common.dart';
import '../../../features.dart';

class UpdateBookmark extends UseCase<BaseResponse<bool>, BookmarkData> {
  final BookmarkRepository repository;

  UpdateBookmark({required this.repository});
  @override
  Future<BaseResponse<bool>> call(BookmarkData params) async =>
      repository.updateBookmark(params);
}
