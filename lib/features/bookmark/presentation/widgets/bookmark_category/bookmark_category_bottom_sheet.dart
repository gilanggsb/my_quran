import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/common.dart';
import '../../../../features.dart';

class BookmarkCategoryBottomSheet extends StatefulWidget {
  const BookmarkCategoryBottomSheet({super.key, this.ayah});
  final Ayah? ayah;

  @override
  State<BookmarkCategoryBottomSheet> createState() => _BookmarkCategoryBottomSheetState();
}

class _BookmarkCategoryBottomSheetState extends State<BookmarkCategoryBottomSheet> {
  late BookmarkCategoryCubit bookmarkCategoryCubit;

  @override
  void initState() {
    bookmarkCategoryCubit = getIt.get<BookmarkCategoryCubit>()..getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = context.getColorExt(AppColorType.background);

    return BlocProvider(
      create: (context) => bookmarkCategoryCubit,
      child: BlocConsumer<BookmarkCategoryCubit, BookmarkCategoryState>(
        listener: (context, state) {
          switch (state) {
            case BookmarkCategoryFailedState(:final message):
              SnackBarWidget.showFailed(message);
              break;
            case BookmarkCategorySuccessAddToBookmarkState():
              SnackBarWidget.showSuccess("Success Add to bookmark");
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
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Column(
                  children: [
                    const DefaultText(
                      "Pilih kategori",
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ).paddingSymmetric(vertical: 10),
                    Divider(thickness: 2, color: context.getColorExt(AppColorType.primary)),
                  ],
                ),
                backgroundColor: bgColor,
                shadowColor: bgColor,
                foregroundColor: bgColor,
                surfaceTintColor: bgColor,
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
              ),
              if (categories.isEmpty)
                SliverToBoxAdapter(
                  child: BookmarkCategoryTile(
                    title: "Tambah Kategori",
                    icon: Icons.add,
                    onPress: () => addCategoryDialog(bookmarkCategoryCubit),
                  ),
                ),
              if (categories.isNotEmpty)
                SliverList.separated(
                  itemCount: categories.length,
                  separatorBuilder:
                      (_, _) => Divider(
                        height: 2,
                        thickness: 0.4,
                        color: context.getColorExt(
                          context.isLightTheme ? AppColorType.background : AppColorType.whiteBase,
                        ),
                      ).paddingSymmetric(horizontal: 10),
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final isFirstItem = index == 0;
                    return Column(
                      children: [
                        if (isFirstItem)
                          BookmarkCategoryTile(
                            category: category,
                            title: "Tambah Kategori",
                            icon: Icons.add,
                            onPress: () => addCategoryDialog(bookmarkCategoryCubit),
                          ),
                        BookmarkCategoryTile(
                          category: category,
                          onPress:
                              () => addAyahToBookmark(
                                bookmarkCategoryCubit: bookmarkCategoryCubit,
                                category: category,
                                ayah: widget.ayah,
                              ),
                        ),
                      ],
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }

  void addCategoryDialog(BookmarkCategoryCubit bookmarkCategoryCubit) {
    DialogManager.showInputDialog(title: 'New Category', onOK: bookmarkCategoryCubit.addCategory);
  }

  void addAyahToBookmark({
    required BookmarkCategoryCubit bookmarkCategoryCubit,
    required BookmarkCategory category,
    Ayah? ayah,
  }) {
    DialogManager.showConfirmDialog(
      title: 'Bookmark',
      message: 'Apakah anda yakin ingin menambahkan ini?',
      onOKPress: () {
        BottomSheetManager.closeCurrentBottomSheet();
        bookmarkCategoryCubit.addToBookmark(ayah: ayah, category: category);
      },
    );
  }
}
