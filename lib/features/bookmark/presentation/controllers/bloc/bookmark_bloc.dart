import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/common.dart';
import '../../../../features.dart';

part 'bookmark_bloc.freezed.dart';
part 'bookmark_event.dart';
part 'bookmark_state.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  GetBookmarks getBookmarks;
  GetAyah getAyah;
  DeleteBookmark deleteBookmark;
  BookmarkBloc({
    required this.getBookmarks,
    required this.getAyah,
    required this.deleteBookmark,
  }) : super(const _Initial()) {
    on<_GetData>(_getData);
    on<_GetBookmarkDetail>(_getBookmarkDetail);
    on<_DeleteBookmark>(_deleteBookmark);
  }

  List<BookmarkData> bookmarks = [];

  FutureOr<void> _getData(
    _GetData event,
    emit,
  ) async {
    try {
      final categoryId = event.categoryId;
      emit(const BookmarkState.loading());

      bookmarks = await getBookmarksData(categoryId: categoryId);

      _emitLoaded(emit);
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  Future<void> _getBookmarkDetail(_GetBookmarkDetail event, emit) async {
    try {
      final bookmark = event.bookmark;
      final isAyahType = bookmark?.type == BookmarkType.ayah().id;
      if (isAyahType) {
        return getAyahDetail(emit, bookmark?.dataId ?? 0);
      }
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  Future<void> getAyahDetail(emit, int ayahId) async {
    try {
      emit(const BookmarkState.detailAyahLoading());
      final resAyah = await getAyah(ayahId);
      if (resAyah.data == null) {
        return _emitFailed(emit, 'Ayah not found');
      }

      emit(BookmarkState.detailAyahLoaded(resAyah.data));
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  Future<void> _deleteBookmark(_DeleteBookmark event, emit) async {
    try {
      emit(const BookmarkState.detailAyahLoading());
      await deleteBookmark(event.bookmarkId ?? 0);
      emit(const BookmarkState.deleteBookmarkSuccess());
    } on ServerFailure catch (e) {
      _emitFailed(emit, e.message);
    } catch (e) {
      _emitFailed(emit, e.toString());
    }
  }

  Future<List<BookmarkData>> getBookmarksData({int? categoryId}) async {
    final resBookmarks = await getBookmarks(categoryId);
    return resBookmarks.data ?? [];
  }

  void _emitLoaded(Emitter<BookmarkState> emit) {
    emit(const BookmarkState.loaded());
  }

  void _emitFailed(Emitter<BookmarkState> emit, String message) {
    emit(BookmarkState.failed(message));
  }
}
