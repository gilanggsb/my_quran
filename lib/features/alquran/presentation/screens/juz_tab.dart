import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../lib.dart';

@RoutePage(name: 'JuzRoute')
class JuzTab extends StatelessWidget {
  const JuzTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JuzCubit, JuzState>(
      listener: (context, state) {
        // state.whenOrNull(failed: (message) => SnackBarWidget.showFailed(message));
        switch (state) {
          case JuzFailedState(:final message):
            SnackBarWidget.showFailed(message);
            break;
          default:
        }
      },
      builder: (context, state) {
        final juzCubit = context.read<JuzCubit>();
        final isLoading = switch (state) {
          JuzLoadingState() => true,
          _ => false,
        };
        final juzs = isLoading ? BoneMockData.fakeJuzs : juzCubit.juzs;
        // final failedMessage = state.whenOrNull(failed: (data) => data);
        // if (failedMessage != null) {
        //   return EmptyStateWidget(title: 'Gagal memuat data', message: failedMessage);
        // }
        return RefreshIndicator(
          color: context.getColorExt(AppColorType.primary),
          onRefresh: () async => juzCubit.getData(),
          child: Skeletonizer(
            enabled: isLoading,
            child: ListView.builder(
              itemCount: juzs.length,
              itemBuilder: (context, index) {
                final juz = juzs[index];
                return QuranTile(
                  quran: Quran(
                    number: juz.number,
                    title: juz.name,
                    subtitle: "${juz.nameStartId} • ${juz.nameEndId}",
                  ),
                  onTap: () {
                    context.pushRoute(
                      QuranDetailRoute(
                        params: QuranDetailParams(
                          juzNumber: juz.number,
                          detailType: QuranDetailTypeEnum.byJuzs,
                        ),
                      ),
                    );
                    context.hideKeyboard();
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
