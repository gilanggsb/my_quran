import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../common/common.dart';
import '../../../../../features.dart';

part 'bookmark_category_cubit.freezed.dart';
part 'bookmark_category_state.dart';

class BookmarkCategoryCubit extends Cubit<BookmarkCategoryState> {
  GetBookmarkCategories getBookmarkCategories;
  AddBookmarkCategory addBookmarkCategory;
  DeleteBookmarkCategory deleteBookmarkCategory;
  AddBookmark addBookmark;
  GetSurah getSurah;
  BookmarkCategoryCubit({
    required this.addBookmarkCategory,
    required this.getBookmarkCategories,
    required this.deleteBookmarkCategory,
    required this.addBookmark,
    required this.getSurah,
  }) : super(const BookmarkCategoryState.initial());

  BookmarkCategory? selectedCategory;
  BookmarkCategoryMode mode = BookmarkCategoryMode.view;
  List<BookmarkCategory> categories = [];

  void getData() async {
    try {
      _emitLoading();
      categories = await getCategories();
      if (categories.isNotEmpty) {
        selectedCategory = categories.first;
      }
      _emitLoaded();
    } on ServerFailure catch (e) {
      _emitFailed(e.message);
    } catch (e) {
      _emitFailed(e.toString());
    }
  }

  void addCategory(String name) async {
    try {
      _emitLoading();
      await addBookmarkCategory(
        BookmarkCategory(
          name: name,
          id: AppUtils.generateUUIDv4(),
        ),
      );
      getData();
      _emitLoaded();
    } on ServerFailure catch (e) {
      _emitFailed(e.message);
    } catch (e) {
      _emitFailed(e.toString());
    }
  }

  void deleteCategory(String categoryId) async {
    try {
      _emitLoading();
      await deleteBookmarkCategory(categoryId);
      getData();
      _emitLoaded();
    } on ServerFailure catch (e) {
      _emitFailed(e.message);
    } catch (e) {
      _emitFailed(e.toString());
    }
  }

  void changeMode(BookmarkCategoryMode newMode) {
    emit(const BookmarkCategoryState.updateState());
    mode = newMode;
    emit(const BookmarkCategoryState.loaded());
  }

  void selectCategory(BookmarkCategory category) {
    emit(const BookmarkCategoryState.updateState());
    selectedCategory = category;
    emit(const BookmarkCategoryState.loaded());
  }

  void addToBookmark({BookmarkCategory? category, Ayah? ayah}) async {
    try {
      _emitLoading();
      final resSurahs = await getSurah(ayah?.surah?.parseInt ?? 0);
      if (resSurahs.data.isNull) {
        _emitFailed("Surah not found");
      }
      final bookmarkData = BookmarkData(
        categoryId: category?.id ?? "0",
        dataId: ayah?.idInt ?? 0,
        id: AppUtils.generateUUIDv4(),
        title: "QS. ${resSurahs.data?.nameId ?? ''}: Ayat ${ayah?.ayah ?? ''}",
        subtitle: ayah?.arab,
        type: BookmarkType.ayah().id,
      );
      await addBookmark(bookmarkData);
      // _emitLoaded();
      emit(const BookmarkCategoryState.successAddToBookmark());
    } on ServerFailure catch (e) {
      _emitFailed(e.message);
    } catch (e) {
      _emitFailed(e.toString());
    }
  }

  Future<List<BookmarkCategory>> getCategories() async {
    final resCategories = await getBookmarkCategories(const NoParams());
    return resCategories.data ?? [];
  }

  void _emitLoading() {
    emit(const BookmarkCategoryState.loading());
  }

  void _emitLoaded() {
    emit(const BookmarkCategoryState.loaded());
  }

  void _emitFailed(String message) {
    emit(BookmarkCategoryState.failed(message));
  }
}
