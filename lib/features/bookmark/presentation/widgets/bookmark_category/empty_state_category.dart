import 'package:flutter/material.dart';

import '../../../../features.dart';

class EmptyStateCategory extends StatelessWidget {
  const EmptyStateCategory({super.key, required this.onPressAddCategory});
  final VoidCallback onPressAddCategory;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BookmarkChipButton(
        onPress: onPressAddCategory,
        text: 'Add Category',
        mode: BookmarkCategoryMode.view,
      ),
    );
  }
}
