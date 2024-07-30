part of 'detail_ayah_cubit.dart';

@freezed
class DetailAyahState with _$DetailAyahState {
  const factory DetailAyahState.initial() = _Initial;
  const factory DetailAyahState.loading() = _Loading;
  const factory DetailAyahState.loaded() = _Loaded;
  const factory DetailAyahState.failed(String message) = _Failed;
}
