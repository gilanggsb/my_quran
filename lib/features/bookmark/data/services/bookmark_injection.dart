import '../../../../common/common.dart';
import '../../../features.dart';

void bookmarkInjection() {
  //bloc
  getIt.registerFactory<BookmarkBloc>(
    () => BookmarkBloc(getBookmarks: getIt(), getAyah: getIt(), deleteBookmark: getIt()),
  );
  getIt.registerFactory<BookmarkCategoryCubit>(
    () => BookmarkCategoryCubit(
      addBookmarkCategory: getIt(),
      getBookmarkCategories: getIt(),
      deleteBookmarkCategory: getIt(),
      addBookmark: getIt(),
      getSurah: getIt(),
    ),
  );
  //repository
  getIt.registerFactory<BookmarkRepository>(
    () => BookmarkRepositoryImpl(localDataSource: getIt(), remoteDataSource: getIt()),
  );
  //datasource
  getIt.registerLazySingleton<BookmarkRemoteDataSource>(
    () => BookmarkRemoteDataSourceImpl(
      // service: getIt(),
    ),
  );
  getIt.registerLazySingleton<BookmarkLocalDataSource>(
    () => BookmarkLocalDataSourceImpl(localDBService: getIt()),
  );
  //usecase
  getIt.registerLazySingleton<GetBookmarkCategories>(
    () => GetBookmarkCategories(repository: getIt()),
  );
  getIt.registerLazySingleton<GetBookmarks>(() => GetBookmarks(repository: getIt()));
  getIt.registerLazySingleton<AddBookmark>(() => AddBookmark(repository: getIt()));
  getIt.registerLazySingleton<DeleteBookmark>(() => DeleteBookmark(repository: getIt()));
  getIt.registerLazySingleton<AddBookmarkCategory>(() => AddBookmarkCategory(repository: getIt()));
  getIt.registerLazySingleton<DeleteBookmarkCategory>(
    () => DeleteBookmarkCategory(repository: getIt()),
  );
  getIt.registerLazySingleton<UpdateBookmark>(() => UpdateBookmark(repository: getIt()));
}
