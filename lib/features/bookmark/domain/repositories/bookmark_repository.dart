import '../../../../common/common.dart';
import '../../../features.dart';

abstract class BookmarkRepository {
  Future<BaseResponse<bool>> addBookmarkCategory(BookmarkCategory category);
  Future<BaseResponse<bool>> deleteBookmarkCategory(String categoryId);
  Future<BaseResponse<List<BookmarkCategory>>> getBookmarkCategories();
  Future<BaseResponse<List<BookmarkData>>> getBookmarks(String? categoryId);
  Future<BaseResponse<bool>> addBookmark(BookmarkData bookmark);
  Future<BaseResponse<bool>> deleteBookmark(String bookmarkId);
  Future<BaseResponse<bool>> updateBookmark(BookmarkData bookmark);
}
