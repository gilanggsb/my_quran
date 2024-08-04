import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class BookmarkTile extends StatelessWidget {
  const BookmarkTile({
    super.key,
    this.title,
    required this.subtitle,
    this.onPress,
    this.onDeletePress,
  });
  final String? title;
  final String subtitle;
  final VoidCallback? onPress;
  final VoidCallback? onDeletePress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      title: DefaultText(
        title ?? '',
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      subtitle: DefaultText(subtitle),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: onDeletePress,
      ),
    );
  }
}
