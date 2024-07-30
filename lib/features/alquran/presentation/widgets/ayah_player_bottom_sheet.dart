import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/common.dart';

class AyahPlayerBottomSheet extends StatelessWidget {
  const AyahPlayerBottomSheet({
    super.key,
    required this.audioSource,
  });
  final Source audioSource;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<PlayerWidgetCubit>()
        ..init()
        ..play(source: audioSource),
      child: const Column(
        children: [
          Text('asdasd'),
          PlayerWidget(
              // source: audioSource,
          ),
        ],
      ),
    );
  }
}
