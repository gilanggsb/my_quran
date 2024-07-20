import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/utils.dart';

part 'player_widget_cubit.freezed.dart';
part 'player_widget_state.dart';

class PlayerWidgetCubit extends Cubit<PlayerWidgetState> {
  PlayerWidgetCubit() : super(const PlayerWidgetState.initial());
  AudioPlayer audioPlayer = AudioPlayer();
  PlayerState playerState = PlayerState.stopped;
  Duration? duration;
  Duration? position;
  StreamSubscription? durationSubscription;
  StreamSubscription? positionSubscription;
  StreamSubscription? playerCompleteSubscription;
  StreamSubscription? playerStateChangeSubscription;

  bool get isPlaying => playerState == PlayerState.playing;

  bool get isPaused => playerState == PlayerState.paused;

  String get durationText => duration?.toString().split('.').first ?? '';

  String get positionText => position?.toString().split('.').first ?? '';

  void init({AudioPlayer? player}) {
    emit(const PlayerWidgetState.loading());
    if (player != null) {
      audioPlayer = player;
    }
    playerState = audioPlayer.state;
    audioPlayer.getDuration().then((value) => duration = value);
    audioPlayer.getCurrentPosition().then(
          (value) => position = value,
        );
    _initStreams();
    emit(const PlayerWidgetState.loaded());
    // resume();
  }

  void onSliderChanged(double value) {
    if (duration == null) {
      return;
    }
    changeAudioState(() {
      final position = value * duration!.inMilliseconds;
      audioPlayer.seek(Duration(milliseconds: position.round()));
    });
  }

  Future<void> play({Source? source}) async {
    changeAudioState(() async {
      if (source != null) {
        audioPlayer.setSource(source);
        await audioPlayer.play(source);
      } else {
        await audioPlayer.resume();
      }

      playerState = PlayerState.playing;
    });
  }

  Future<void> resume() async {
    changeAudioState(() async {
      await audioPlayer.resume();
      playerState = PlayerState.playing;
    });
  }

  Future<void> pause() async {
    changeAudioState(() async {
      await audioPlayer.pause();
      playerState = PlayerState.paused;
    });
  }

  Future<void> stop() async {
    changeAudioState(() async {
      await audioPlayer.stop();
      playerState = PlayerState.stopped;
      position = Duration.zero;
    });
  }

  @override
  Future<void> close() {
    durationSubscription?.cancel();
    positionSubscription?.cancel();
    playerCompleteSubscription?.cancel();
    playerStateChangeSubscription?.cancel();
    return super.close();
  }

  void _initStreams() {
    durationSubscription = audioPlayer.onDurationChanged.listen((newDuration) {
      changeAudioState(() => duration = newDuration);
    });

    positionSubscription = audioPlayer.onPositionChanged.listen(
      (p) => changeAudioState(() => position = p),
    );

    playerCompleteSubscription = audioPlayer.onPlayerComplete.listen((event) {
      changeAudioState(() {
        playerState = PlayerState.stopped;
        position = Duration.zero;
      });
    });

    playerStateChangeSubscription =
        audioPlayer.onPlayerStateChanged.listen((state) {
      changeAudioState(() => playerState = state);
    });
  }

  void changeAudioState(FutureCallback callback) async {
    emit(const PlayerWidgetState.updateAudio());
    await callback();
    emit(const PlayerWidgetState.loaded());
  }
}
