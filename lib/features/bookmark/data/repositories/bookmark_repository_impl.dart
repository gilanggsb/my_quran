import "../../../../common/common.dart";
import "../../domain/domain.dart";
import "../data.dart";

class BookmarkRepositoryImpl extends BookmarkRepository {
  final BookmarkLocalDataSource localDataSource;
  final BookmarkRemoteDataSource remoteDataSource;
  BookmarkRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<BaseResponse<bool>> addBookmark(BookmarkData bookmark) {
    return localDataSource.addBookmark(bookmark);
  }

  @override
  Future<BaseResponse<bool>> addBookmarkCategory(BookmarkCategory category) {
    return localDataSource.addBookmarkCategory(category);
  }

  @override
  Future<BaseResponse<bool>> deleteBookmark(String bookmarkId) {
    return localDataSource.deleteBookmark(bookmarkId);
  }

  @override
  Future<BaseResponse<bool>> deleteBookmarkCategory(String categoryId) {
    return localDataSource.deleteBookmarkCategory(categoryId);
  }

  @override
  Future<BaseResponse<List<BookmarkCategory>>> getBookmarkCategories() {
    return localDataSource.getBookmarkCategories();
  }

  @override
  Future<BaseResponse<List<BookmarkData>>> getBookmarks(String? categoryId) {
    return localDataSource.getBookmarks(categoryId);
  }

  @override
  Future<BaseResponse<bool>> updateBookmark(BookmarkData bookmark) {
    return localDataSource.updateBookmark(bookmark);
  }
}
