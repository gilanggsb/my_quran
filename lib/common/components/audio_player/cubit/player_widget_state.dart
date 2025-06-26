part of 'player_widget_cubit.dart';

@freezed
class PlayerWidgetState with _$PlayerWidgetState {
  const factory PlayerWidgetState.initial() = PlayerWidgetInitialState;
  const factory PlayerWidgetState.loading() = PlayerWidgetLoadingState;
  const factory PlayerWidgetState.loaded() = PlayerWidgetLoadedState;
  const factory PlayerWidgetState.updateAudio() = PlayerWidgetUpdateAudioStateState;
}
