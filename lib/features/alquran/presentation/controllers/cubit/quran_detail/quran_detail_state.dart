part of 'quran_detail_cubit.dart';

@freezed
sealed class QuranDetailState with _$QuranDetailState {
  const factory QuranDetailState.initial() = QuranDetailInitialState;
  const factory QuranDetailState.loading() = QuranDetailLoadingState;
  const factory QuranDetailState.updateState() = QuranDetaiUpdateState;
  const factory QuranDetailState.loadingMoreData() = QuranDetailLoadingMoreDataState;
  const factory QuranDetailState.loaded() = QuranDetailLoadedState;
  const factory QuranDetailState.failed(String message) = QuranDetailFailedState;
}
