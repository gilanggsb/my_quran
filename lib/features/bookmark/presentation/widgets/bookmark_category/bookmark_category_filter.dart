import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../common/common.dart';
import '../../../../features.dart';

class BookmarkCategoryFilter extends StatelessWidget {
  const BookmarkCategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final bookmarkCategoryCubit = context.read<BookmarkCategoryCubit>();
    return BlocConsumer<BookmarkCategoryCubit, BookmarkCategoryState>(
      listener: (context, state) {
        switch (state) {
          case BookmarkCategoryFailedState(:final message):
            SnackBarWidget.showFailed(message);
            break;
          default:
        }
      },
      builder: (context, state) {
        final isLoading = switch (state) {
          BookmarkCategoryLoadingState() => true,
          _ => false,
        };
        final categories =
            isLoading ? BoneMockData.fakeCategories : bookmarkCategoryCubit.categories;
        final selectedCategory = bookmarkCategoryCubit.selectedCategory;
        final mode = bookmarkCategoryCubit.mode;

        return Skeletonizer(
          enabled: isLoading,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: [
              SizedBox(
                height: 50,
                child:
                    categories.isEmpty
                        ? EmptyStateCategory(
                          onPressAddCategory: () => addCategoryDialog(bookmarkCategoryCubit),
                        )
                        : ListView.separated(
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          separatorBuilder: (_, _) => 10.widthBox,
                          itemBuilder: (context, index) {
                            final category = categories[index];

                            return Skeleton.leaf(
                              child: Row(
                                children: [
                                  if (index == 0 && mode.isEditMode)
                                    BookmarkChipButton(
                                      mode: BookmarkCategoryMode.add,
                                      text: '',
                                      onPress: () => addCategoryDialog(bookmarkCategoryCubit),
                                    ).marginOnly(right: 10),
                                  BookmarkChipButton(
                                    isActive: category.id == selectedCategory?.id,
                                    onPress: () {
                                      if (mode.isEditMode) {
                                        bookmarkCategoryCubit.deleteCategory(category.id!);
                                        return;
                                      }

                                      bookmarkCategoryCubit.selectCategory(category);
                                    },
                                    text: category.name ?? '',
                                    mode: mode,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
              ),
            ],
          ),
        ).paddingAll(16);
      },
    );
  }

  void addCategoryDialog(BookmarkCategoryCubit bookmarkCategoryCubit) {
    DialogManager.showInputDialog(title: 'New Category', onOK: bookmarkCategoryCubit.addCategory);
  }
}
