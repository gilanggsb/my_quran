part of 'juz_cubit.dart';

@freezed
class JuzState with _$JuzState {
  const factory JuzState.initial() = JuzInitialState;
  const factory JuzState.loading() = JuzLoadingState;
  const factory JuzState.loaded() = JuzLoadedState;
  const factory JuzState.failed(String message) = JuzFailedState;
}
