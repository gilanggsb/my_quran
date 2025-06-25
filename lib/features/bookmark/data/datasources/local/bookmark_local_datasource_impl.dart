import "../../../../../common/common.dart";
import "../../data.dart";

class BookmarkLocalDataSourceImpl extends BookmarkLocalDataSource {
  final HiveService localDBService;
  BookmarkLocalDataSourceImpl({required this.localDBService});

  @override
  Future<BaseResponse<List<BookmarkCategory>>> getBookmarkCategories() async {
    try {
      final bookmarkCategoryBox =
          localDBService.getCollection<BookmarkCategory>();
      final bookmarks = bookmarkCategoryBox.values
          .toList(); // Retrieve all bookmark categories

      return BaseResponse.success<List<BookmarkCategory>>(data: bookmarks);
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<List<BookmarkData>>> getBookmarks(
    String? categoryId,
  ) async {
    try {
      final bookmarkCollection = localDBService.getCollection<BookmarkData>();
      List<BookmarkData> bookmarks = [];
      if (categoryId != null) {
        bookmarks = bookmarkCollection.values
            .where((bookmark) => bookmark.categoryId == categoryId)
            .toList();
      } else {
        bookmarks = bookmarkCollection.values.toList();
      }
      return BaseResponse.success<List<BookmarkData>>(data: bookmarks);
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<bool>> addBookmark(BookmarkData bookmark) async {
    try {
      await localDBService.write<BookmarkData>(bookmark);
      return BaseResponse.success<bool>();
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<bool>> deleteBookmark(String bookmarkId) async {
    try {
      final bookmarkCollection = localDBService.getCollection<BookmarkData>();
      await bookmarkCollection.delete(bookmarkId);
      return BaseResponse.success<bool>();
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<bool>> updateBookmark(BookmarkData bookmark) async {
    try {
      await localDBService.write<BookmarkData>(bookmark);
      return BaseResponse.success<bool>();
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<bool>> addBookmarkCategory(
    BookmarkCategory category,
  ) async {
    try {
      await localDBService.write<BookmarkCategory>(category);
      return BaseResponse.success<bool>();
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<BaseResponse<bool>> deleteBookmarkCategory(String categoryId) async {
    try {
      final bookmarkCategoryCollection =
          localDBService.getCollection<BookmarkCategory>();
      await bookmarkCategoryCollection.delete(categoryId);
      return BaseResponse.success<bool>();
    } on String catch (_) {
      rethrow;
    } on CacheFailure catch (e) {
      throw e.message;
    } catch (e) {
      throw e.toString();
    }
  }
}
