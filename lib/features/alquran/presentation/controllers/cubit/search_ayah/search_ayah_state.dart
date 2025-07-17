part of 'search_ayah_cubit.dart';

@freezed
class SearchAyahState with _$SearchAyahState {
  const factory SearchAyahState.initial() = SearchAyahInitialState;
  const factory SearchAyahState.loading() = SearchAyahLoadingState;
  const factory SearchAyahState.loaded() = SearchAyahLoadedState;
  const factory SearchAyahState.searchingSurahOrJuz() = SearchAyahSearchingSurahOrJuzState;
  const factory SearchAyahState.failed(String message) = SearchAyahFailedState;
}
