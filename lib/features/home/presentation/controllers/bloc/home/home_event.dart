part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getData() = _GetData;
  const factory HomeEvent.searchSurahJuz(String query) = _SearchSurahJuz;
  const factory HomeEvent.clearSearch() = _ClearSearch;
}
