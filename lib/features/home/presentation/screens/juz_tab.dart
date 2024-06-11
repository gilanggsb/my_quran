import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_quran/features/features.dart';

@RoutePage(name: 'JuzRoute')
class JuzTab extends StatelessWidget {
  const JuzTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const QuranTile(),
    );
  }
}
