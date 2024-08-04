part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = _Initial;
  const factory BookmarkState.loading() = _Loading;
  const factory BookmarkState.loaded() = _Loaded;
  const factory BookmarkState.failed(String message) = _Error;
  const factory BookmarkState.detailAyahLoading() = _DetailAyahLoading;
  const factory BookmarkState.detailAyahLoaded(Ayah? ayah) = _DetailAyahLoaded;
  const factory BookmarkState.deleteBookmarkSuccess() = _DeleteBookmarkSuccess;
}
