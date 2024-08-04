import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/common.dart';
import '../../../../features.dart';

class BookmarkCategoryTitle extends StatelessWidget {
  const BookmarkCategoryTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkCategoryCubit, BookmarkCategoryState>(
      builder: (context, state) {
        final bookmarkCatgeoryCubit = context.read<BookmarkCategoryCubit>();
        final mode = bookmarkCatgeoryCubit.mode;
        return Row(
          children: [
            const DefaultText(
              "Category",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            IconButton(
              onPressed: () {
                mode.isViewMode
                    ? bookmarkCatgeoryCubit
                        .changeMode(BookmarkCategoryMode.edit)
                    : bookmarkCatgeoryCubit
                        .changeMode(BookmarkCategoryMode.view);
              },
              icon: Icon(
                renderIcon(mode),
                size: 18,
              ),
            ),
          ],
        );
      },
    );
  }

  IconData renderIcon(BookmarkCategoryMode mode) {
    if (mode.isEditMode) {
      return Icons.close;
    }
    return Icons.edit;
  }
}
