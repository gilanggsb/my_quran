import '../../../../common/common.dart';
import '../../../features.dart';

class DeleteBookmark extends UseCase<BaseResponse<bool>, String> {
  final BookmarkRepository repository;

  DeleteBookmark({required this.repository});
  @override
  Future<BaseResponse<bool>> call(String params) async => repository.deleteBookmark(params);
}
