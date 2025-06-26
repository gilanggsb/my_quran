part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = HomeStartedEvent;
  const factory HomeEvent.getData() = HomeGetDataEvent;
  const factory HomeEvent.searchSurahJuz(String query) = HomeSearchSurahJuzEvent;
  const factory HomeEvent.clearSearch() = HomeClearSearchEvent;
}
