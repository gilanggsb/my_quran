part of 'preview_ayah_cubit.dart';

@freezed
class PreviewAyahState with _$PreviewAyahState {
  const factory PreviewAyahState.initial() = PreviewAyahInitialState;
  const factory PreviewAyahState.loading() = PreviewAyahLoadingState;
  const factory PreviewAyahState.loaded() = PreviewAyahLoadedState;
  const factory PreviewAyahState.searchingSurahOrJuz() = PreviewAyahSearchingSurahOrJuzState;
  const factory PreviewAyahState.failed(String message) = PreviewAyahFailedState;
}
