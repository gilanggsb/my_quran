part of 'juz_cubit.dart';

@freezed
class JuzState with _$JuzState {
  const factory JuzState.initial() = _Initial;
  const factory JuzState.loading() = _Loading;
  const factory JuzState.loaded() = _Loaded;
  const factory JuzState.failed(String message) = _Failed;
}
