part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitialState;
  const factory HomeState.loading() = HomeLoadingState;
  const factory HomeState.loaded() = HomeSuccessState;
  const factory HomeState.searching() = HomeSearchingState;
  const factory HomeState.searchedSurahJuz(String query) = HomeSearchedSurahJuzState;
  const factory HomeState.failed(String message) = HomeErrorState;
}
