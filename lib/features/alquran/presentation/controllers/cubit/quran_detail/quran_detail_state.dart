part of 'quran_detail_cubit.dart';

@freezed
class QuranDetailState with _$QuranDetailState {
  const factory QuranDetailState.initial() = _Initial;
  const factory QuranDetailState.loading() = _Loading;
  const factory QuranDetailState.loadingMoreData() = _LoadingMoreData;
  const factory QuranDetailState.loaded() = _Loaded;
  const factory QuranDetailState.failed(String message) = _Failed;
}
