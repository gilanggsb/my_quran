part of 'player_widget_cubit.dart';

@freezed
class PlayerWidgetState with _$PlayerWidgetState {
  const factory PlayerWidgetState.initial() = _Initial;
  const factory PlayerWidgetState.loading() = _Loading;
  const factory PlayerWidgetState.loaded() = _Loaded;
  const factory PlayerWidgetState.updateAudio() = _UpdateAudioState;
}
