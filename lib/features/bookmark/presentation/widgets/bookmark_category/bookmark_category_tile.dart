import 'package:flutter/material.dart';

import '../../../../../common/common.dart';
import '../../../../features.dart';

class BookmarkCategoryTile extends StatelessWidget {
  const BookmarkCategoryTile({
    super.key,
    this.category,
    this.title,
    this.icon,
    required this.onPress,
  });

  final BookmarkCategory? category;
  final String? title;
  final IconData? icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final finalText = title ?? category?.name ?? '';
    return ListTile(
      leading: Icon(icon ?? Icons.folder, color: context.getColorExt(AppColorType.primary)),
      splashColor: context.getColorExt(AppColorType.primaryLight),
      title: DefaultText(finalText.capitalFirstChar),
      onTap: onPress,
    );
  }
}
