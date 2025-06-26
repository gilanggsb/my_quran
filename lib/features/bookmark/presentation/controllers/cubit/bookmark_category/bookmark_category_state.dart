part of 'bookmark_category_cubit.dart';

@freezed
class BookmarkCategoryState with _$BookmarkCategoryState {
  const factory BookmarkCategoryState.initial() = BookmarkCategoryInitialState;
  const factory BookmarkCategoryState.loading() = BookmarkCategoryLoadingState;
  const factory BookmarkCategoryState.updateState() = BookmarkCategoryUpdateStateState;
  const factory BookmarkCategoryState.loaded() = BookmarkCategoryLoadedState;
  const factory BookmarkCategoryState.successAddToBookmark() =
      BookmarkCategorySuccessAddToBookmarkState;
  const factory BookmarkCategoryState.failed(String message) = BookmarkCategoryFailedState;
}
