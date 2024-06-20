import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage(name: 'JuzRoute')
class JuzTab extends StatelessWidget {
  const JuzTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JuzCubit, JuzState>(
      builder: (context, state) {
        final juzCubit = context.read<JuzCubit>();
        final isLoading = state.whenOrNull(loading: () => true) ?? false;
        final juzs = juzCubit.juzs;
        return RefreshIndicator(
          color: context.colorsExt.primary,
          onRefresh: () async => juzCubit.getData(),
          child: Skeletonizer(
            enabled: isLoading,
            child: ListView.builder(
              itemCount: isLoading ? 10 : juzs.length,
              itemBuilder: (context, index) {
                final juz = juzs.isNotEmpty ? juzs[index] : null;
                return QuranTile(
                  number: juz?.number ?? '',
                  title: juz?.name ?? '',
                  subTitle: "${juz?.nameStartId} • ${juz?.nameEndId}",
                  rightIcon: QuranStatus(
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
