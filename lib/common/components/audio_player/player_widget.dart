import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({
    super.key,
    required this.source,
  });
  final Source source;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerWidgetCubit, PlayerWidgetState>(
      builder: (context, state) {
        final playerWidgetCubit = context.read<PlayerWidgetCubit>();
        final isPlaying = playerWidgetCubit.isPlaying;
        final position = playerWidgetCubit.position;
        final positionText = playerWidgetCubit.positionText;
        final duration = playerWidgetCubit.duration;
        final durationText = playerWidgetCubit.durationText;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  key: const Key('play_button'),
                  onPressed: isPlaying ? null : playerWidgetCubit.play,
                  iconSize: 48.0,
                  icon: const Icon(Icons.play_arrow),
                  color: context.getColorExt(AppColorType.primary),
                ),
                IconButton(
                  key: const Key('pause_button'),
                  onPressed: isPlaying ? playerWidgetCubit.pause : null,
                  iconSize: 48.0,
                  icon: const Icon(Icons.pause),
                  color: context.getColorExt(AppColorType.primary),
                ),
                IconButton(
                  key: const Key('stop_button'),
                  onPressed: isPlaying || playerWidgetCubit.isPaused
                      ? playerWidgetCubit.stop
                      : null,
                  iconSize: 48.0,
                  icon: const Icon(Icons.stop),
                  color: context.getColorExt(AppColorType.primary),
                ),
              ],
            ),
            Slider(
              thumbColor: context.getColorExt(AppColorType.primary),
              activeColor: context.getColorExt(AppColorType.primary),
              onChanged: playerWidgetCubit.onSliderChanged,
              value: (position != null &&
                      duration != null &&
                      position.inMilliseconds > 0 &&
                      position.inMilliseconds < duration.inMilliseconds)
                  ? position.inMilliseconds / duration.inMilliseconds
                  : 0.0,
            ),
            Text(
              position != null
                  ? '$positionText / $durationText'
                  : duration != null
                      ? durationText
                      : '',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        );
      },
    );
  }
}
