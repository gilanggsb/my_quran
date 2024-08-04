import '../../../../../common/common.dart';
import '../../../../features.dart';

abstract class BookmarkLocalDataSource {
  Future<BaseResponse<bool>> addBookmarkCategory(BookmarkCategory category);
  Future<BaseResponse<bool>> deleteBookmarkCategory(int categoryId);
  Future<BaseResponse<List<BookmarkCategory>>> getBookmarkCategories();
  Future<BaseResponse<List<BookmarkData>>> getBookmarks(int? categoryId);
  Future<BaseResponse<bool>> addBookmark(BookmarkData bookmark);
  Future<BaseResponse<bool>> deleteBookmark(int bookmarkId);
  Future<BaseResponse<bool>> updateBookmark(BookmarkData bookmark);
}
