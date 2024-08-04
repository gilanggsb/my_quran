import "package:isar/isar.dart";

import "../../../../../common/common.dart";
import "../../data.dart";

class BookmarkLocalDataSourceImpl extends BookmarkLocalDataSource {
  final IsarService localDBService;
  BookmarkLocalDataSourceImpl({required this.localDBService});

  @override
  Future<BaseResponse<List<BookmarkCategory>>> getBookmarkCategories() async {
    try {
      final bookmarkCategoryCollection =
          localDBService.getCollection<BookmarkCategory>();
      final bookmarks = await bookmarkCategoryCollection.where().findAll();
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
  Future<BaseResponse<List<BookmarkData>>> getBookmarks(int? categoryId) async {
    try {
      final bookmarkCollection = localDBService.getCollection<BookmarkData>();
      List<BookmarkData> bookmarks = [];
      if (categoryId != null) {
        bookmarks = await bookmarkCollection
            .filter()
            .categoryIdEqualTo(categoryId)
            .findAll();
      } else {
        bookmarks = await bookmarkCollection.where().findAll();
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
  Future<BaseResponse<bool>> deleteBookmark(int bookmarkId) async {
    try {
      final bookmarkCollection = localDBService.getCollection<BookmarkData>();
      final deleteBookmark =
          bookmarkCollection.filter().idEqualTo(bookmarkId).deleteAll;
      await localDBService.writeTXN(
        () async => await deleteBookmark(),
      );
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
      final bookmarkCollection = localDBService.getCollection<BookmarkData>();
      await bookmarkCollection.put(bookmark);
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
    Logger.logInfo(category.toString());

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
  Future<BaseResponse<bool>> deleteBookmarkCategory(int categoryId) async {
    try {
      final bookmarkCategoryCollection =
          localDBService.getCollection<BookmarkCategory>();
      final deleteCategory =
          bookmarkCategoryCollection.filter().idEqualTo(categoryId).deleteAll;

      await localDBService.writeTXN(
        () async => await deleteCategory(),
      );
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
