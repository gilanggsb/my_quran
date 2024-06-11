import 'package:flutter/material.dart';
import 'package:my_quran/features/features.dart';

class QuranTile extends StatelessWidget {
  const QuranTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const QuranNumber(),
      title: const QuranTitle(),
      trailing: QuranStatus(
        onTap: () {},
      ),
    );
  }
}
