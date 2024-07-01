part of 'jump_ayah_cubit.dart';

@freezed
class JumpAyahState with _$JumpAyahState {
  const factory JumpAyahState.initial() = _Initial;
  const factory JumpAyahState.loading() = _Loading;
  const factory JumpAyahState.loaded() = _Loaded;
  const factory JumpAyahState.failed(String message) = _Failed;
}
