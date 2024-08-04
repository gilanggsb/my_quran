part of 'bookmark_category_cubit.dart';

@freezed
class BookmarkCategoryState with _$BookmarkCategoryState {
  const factory BookmarkCategoryState.initial() = _Initial;
  const factory BookmarkCategoryState.loading() = _Loading;
  const factory BookmarkCategoryState.updateState() = _UpdateState;
  const factory BookmarkCategoryState.loaded() = _LOaded;
  const factory BookmarkCategoryState.failed(String message) = _Failed;
}
