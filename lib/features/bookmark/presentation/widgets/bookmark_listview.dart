import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../common/common.dart';
import '../../../features.dart';

class BookmarkListView extends StatelessWidget {
  const BookmarkListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookmarkCategoryCubit, BookmarkCategoryState>(
      listener: (context, state) {
        final bookmarkBloc = context.read<BookmarkBloc>();
        final bookmarkCategoryCubit = context.read<BookmarkCategoryCubit>();
        final selectedCategory = bookmarkCategoryCubit.selectedCategory;
        if (!selectedCategory.isNull) {
          return bookmarkBloc
              .add(BookmarkEvent.getData(categoryId: selectedCategory?.id));
        }
      },
      child: BlocConsumer<BookmarkBloc, BookmarkState>(
        listener: (context, state) {
          final bookmarkBloc = context.read<BookmarkBloc>();

          state.whenOrNull(
            detailAyahLoaded: (detailAyah) => onDetailAyahLoaded(detailAyah!),
            failed: (message) => SnackBarWidget.showFailed(message),
            deleteBookmarkSuccess: () {
              SnackBarWidget.showSuccess("Success delete bookmark");
              bookmarkBloc.add(const BookmarkEvent.getData());
            },
          );
        },
        builder: (context, state) {
          final bookmarkBloc = context.read<BookmarkBloc>();
          final isLoading = state.whenOrNull(loading: () => true) ?? false;
          final bookmarks =
              isLoading ? BoneMockData.fakeBookmarks : bookmarkBloc.bookmarks;

          return Skeletonizer(
            enabled: isLoading,
            child: bookmarks.isEmpty
                ? SizedBox(
                    height: context.getHeight * 0.5,
                    child: const EmptyStateWidget(
                      title: "You don't have any bookmark",
                      message: '',
                    ),
                  )
                : ListView.separated(
                    itemCount: bookmarks.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      final bookmark = bookmarks[index];
                      return Column(
                        children: [
                          BookmarkTile(
                            title: bookmark.title,
                            subtitle: bookmark.subtitle ?? '',
                            onPress: () => onBookmarkDataPress(
                              bookmarkBloc: bookmarkBloc,
                              bookmark: bookmark,
                            ),
                            onDeletePress: () => bookmarkBloc.add(
                              BookmarkEvent.deleteBookmark(
                                bookmarkId: bookmark.id,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ).paddingSymmetric(
                    horizontal: 16,
                  ),
          );
        },
      ),
    );
  }

  void onDetailAyahLoaded(Ayah? ayah) {
    if (ayah == null) return;
    final lastReadAyah = LastReadAyah(ayah: ayah);
    final params = QuranDetailParams(
      detailType: QuranDetailTypeEnum.bySurahs,
      lastReadAyah: lastReadAyah,
    );
    BottomSheetManager.showCustomBottomSheet(
      child: DetailAyahBottomSheet(
        quranDetailParams: params,
        ayah: lastReadAyah.ayah,
      ),
    );
  }

  void onBookmarkDataPress({
    required BookmarkBloc bookmarkBloc,
    BookmarkData? bookmark,
  }) {
    if (bookmark == null) return;
    bookmarkBloc.add(BookmarkEvent.getBookmarkDetail(bookmark: bookmark));
  }
}
