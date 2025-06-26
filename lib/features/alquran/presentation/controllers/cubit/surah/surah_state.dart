part of 'surah_cubit.dart';

@freezed
class SurahState with _$SurahState {
  const factory SurahState.initial() = SurahInitialState;
  const factory SurahState.loading() = SurahLoadingState;
  const factory SurahState.loaded() = SurahLoadedState;
  const factory SurahState.failed(String message) = SurahFailedState;
}
