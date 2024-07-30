import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../common.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        child: ValueListenableBuilder(
          valueListenable: BottomSheetManager.isBottomSheetShownNotifier,
          builder: (_, isBottomSheetShown, __) =>
              BlocBuilder<PlayerWidgetCubit, PlayerWidgetState>(
            builder: (context, state) {
              final playerWidgetCubit = context.read<PlayerWidgetCubit>();
              final isLoading = state.whenOrNull(loading: () => true) ?? false;
              final showPlayer =
                  playerWidgetCubit.showPlayer && !isBottomSheetShown;
              final sliderValue = playerWidgetCubit.sliderValue;

              if (!showPlayer) {
                return const SizedBox.shrink();
              }
              return Container(
                width: context.getWidth,
                constraints: BoxConstraints(maxHeight: context.getHeight * 0.1),
                decoration: BoxDecoration(
                  color: context.getColorExt(AppColorType.background),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.5,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Skeletonizer(
                      enabled: isLoading,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              if (isLoading)
                                const Align(
                                  key: Key('disc_anim_player'),
                                  alignment: Alignment.centerLeft,
                                  child: Icon(Icons.menu, size: 52),
                                ).paddingSymmetric(horizontal: 14),
                              if (!isLoading)
                                Align(
                                  key: const Key('disc_anim_player'),
                                  alignment: Alignment.centerLeft,
                                  child: Lottie.asset(
                                    AppAssets.musicDiscAnim,
                                    height: 80,
                                    width: 80,
                                    renderCache: RenderCache.drawingCommands,
                                  ),
                                ),
                              AudioInformation(
                                title: playerWidgetCubit.title,
                                subTitle: playerWidgetCubit.subTitle,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              IconButton(
                                key: const Key('menu_button'),
                                onPressed: showBottomSheetAudioPlayerMenu,
                                iconSize: 36,
                                icon: const Icon(Icons.menu),
                                color:
                                    context.getColorExt(AppColorType.primary),
                              ),
                            ],
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 10),
                    ),
                    SliderContainer(
                      max: context.getWidth,
                      value: sliderValue * context.getWidth,
                      sliderHeight: 4,
                      dragAreaHeight: 4, // Set a larger drag area
                      duration: const Duration(milliseconds: 100),
                      onChanged: (value) => playerWidgetCubit
                          .onSliderChanged(value / context.getWidth),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void showBottomSheetAudioPlayerMenu() {
    BottomSheetManager.showCustomBottomSheet(
      height: globalContext.getHeight * 0.2,
      child: const AudioPlayerMenuBottomSheet(),
    );
  }
}
