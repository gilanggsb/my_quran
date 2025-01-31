part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded() = _Success;
  const factory HomeState.searching() = _Searching;
  const factory HomeState.searchedSurahJuz(String query) = _SearchedSurahJuz;
  const factory HomeState.failed(String message) = _Error;
}
