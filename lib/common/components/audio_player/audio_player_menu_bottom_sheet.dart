import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common.dart';

class AudioPlayerMenuBottomSheet extends StatelessWidget {
  const AudioPlayerMenuBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerWidgetCubit, PlayerWidgetState>(
      builder: (context, state) {
        final playerWidgetCubit = context.read<PlayerWidgetCubit>();
        final sliderValue = playerWidgetCubit.sliderValue;
        final isPlaying = playerWidgetCubit.isPlaying;
        final duration = playerWidgetCubit.durationText;
        final position = playerWidgetCubit.positionText;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AudioInformation(
                  title: playerWidgetCubit.title,
                  subTitle: playerWidgetCubit.subTitle,
                ),
                const Spacer(),
                IconButton(
                  key: const Key('play_button'),
                  onPressed: isPlaying
                      ? playerWidgetCubit.pause
                      : playerWidgetCubit.play,
                  iconSize: 40,
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
                  color: context.getColorExt(AppColorType.primary),
                  padding: EdgeInsets.zero,
                ),
                IconButton(
                  key: const Key('stop_button'),
                  onPressed: isPlaying || playerWidgetCubit.isPaused
                      ? playerWidgetCubit.stop
                      : null,
                  iconSize: 40,
                  icon: const Icon(Icons.stop),
                  color: context.getColorExt(AppColorType.primary),
                  padding: EdgeInsets.zero,
                ),
                IconButton(
                  key: const Key('close_button'),
                  onPressed: () {
                    playerWidgetCubit.closePlayerWdget();
                    BottomSheetManager.closeCurrentBottomSheet();
                  },
                  iconSize: 40,
                  icon: const Icon(Icons.close),
                  color: context.getColorExt(AppColorType.primary),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
            12.heightBox,
            Slider.adaptive(
              value: sliderValue,
              onChanged: playerWidgetCubit.onSliderChanged,
              activeColor: context.getColorExt(AppColorType.primary),
              thumbColor: context.getColorExt(AppColorType.primary),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultText(position),
                DefaultText(duration),
              ],
            ),
          ],
        );
      },
    );
  }
}
