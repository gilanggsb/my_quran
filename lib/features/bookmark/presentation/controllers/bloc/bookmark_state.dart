part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = BookmarkInitialState;
  const factory BookmarkState.loading() = BookmarkLoadingState;
  const factory BookmarkState.loaded() = BookmarkLoadedState;
  const factory BookmarkState.failed(String message) = BookmarkErrorState;
  const factory BookmarkState.detailAyahLoading() = BookmarkDetailAyahLoadingState;
  const factory BookmarkState.detailAyahLoaded(Ayah? ayah) = BookmarkDetailAyahLoadedState;
  const factory BookmarkState.deleteBookmarkSuccess() = BookmarkDeleteBookmarkSuccessState;
}
