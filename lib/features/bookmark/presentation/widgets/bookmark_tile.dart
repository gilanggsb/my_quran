import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class BookmarkTile extends StatelessWidget {
  const BookmarkTile({
    super.key,
    this.title,
    required this.subtitle,
    required this.onPress,
  });
  final String? title;
  final String subtitle;
  final VoidCallback onPress;

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
    );
  }
}
