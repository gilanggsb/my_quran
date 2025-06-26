part of 'detail_ayah_cubit.dart';

@freezed
class DetailAyahState with _$DetailAyahState {
  const factory DetailAyahState.initial() = DetailAyahInitialState;
  const factory DetailAyahState.loading() = DetailAyahLoadingState;
  const factory DetailAyahState.loaded() = DetailAyahLoadedState;
  const factory DetailAyahState.failed(String message) = DetailAyahFailedState;
}
