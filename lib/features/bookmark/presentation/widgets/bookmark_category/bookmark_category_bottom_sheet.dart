import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/common.dart';
import '../../../../features.dart';

class BookmarkCategoryBottomSheet extends StatelessWidget {
  const BookmarkCategoryBottomSheet({super.key, this.ayah});
  final Ayah? ayah;

  @override
  Widget build(BuildContext context) {
    final bgColor = context.getColorExt(AppColorType.background);

    return BlocProvider(
      create: (context) => getIt.get<BookmarkCategoryCubit>()..getData(),
      child: BlocConsumer<BookmarkCategoryCubit, BookmarkCategoryState>(
        listener: (context, state) => state.whenOrNull(
          failed: (message) => SnackBarWidget.showFailed(message),
          successAddToBookmark: () =>
              SnackBarWidget.showSuccess("Success Add to bookmark"),
        ),
        builder: (context, state) {
          final bookmarkCategoryCubit = context.read<BookmarkCategoryCubit>();
          final isLoading = state.whenOrNull(loading: () => true) ?? false;
          final categories = isLoading
              ? BoneMockData.fakeCategories
              : bookmarkCategoryCubit.categories;
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
                    Divider(
                      thickness: 2,
                      color: context.getColorExt(AppColorType.primary),
                    ),
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
                  separatorBuilder: (_, __) => Divider(
                    height: 2,
                    thickness: 0.4,
                    color: context.getColorExt(
                      context.isLightTheme
                          ? AppColorType.background
                          : AppColorType.whiteBase,
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
                            onPress: () =>
                                addCategoryDialog(bookmarkCategoryCubit),
                          ),
                        BookmarkCategoryTile(
                          category: category,
                          onPress: () => addAyahToBookmark(
                            bookmarkCategoryCubit: bookmarkCategoryCubit,
                            category: category,
                            ayah: ayah,
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
    DialogManager.showInputDialog(
      title: 'New Category',
      onOK: bookmarkCategoryCubit.addCategory,
    );
  }

  void addAyahToBookmark({
    required BookmarkCategoryCubit bookmarkCategoryCubit,
    required BookmarkCategory category,
    Ayah? ayah,
  }) {
    DialogManager.showSimpleDialog(
      title: 'Bookmark',
      message: 'Apakah anda yakin ingin menambahkan ini?',
      actions: [
        DefaultButton.textButton(
          onPress: () {
            DialogManager.closeCurrentDialog();
            BottomSheetManager.closeCurrentBottomSheet();
            bookmarkCategoryCubit.addToBookmark(ayah: ayah, category: category);
          },
          text: 'Ya',
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        ),
        DefaultButton.textButton(
          onPress: () => DialogManager.closeCurrentDialog(),
          text: 'Tidak',
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        ),
      ],
    );
  }
}