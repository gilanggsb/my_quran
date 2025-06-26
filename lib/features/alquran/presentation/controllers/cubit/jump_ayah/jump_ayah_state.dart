part of 'jump_ayah_cubit.dart';

@freezed
class JumpAyahState with _$JumpAyahState {
  const factory JumpAyahState.initial() = JumpAyahInitialState;
  const factory JumpAyahState.loading() = JumpAyahLoadingState;
  const factory JumpAyahState.loaded() = JumpAyahLoadedState;
  const factory JumpAyahState.searchingSurahOrJuz() = JumpAyahSearchingSurahOrJuzState;
  const factory JumpAyahState.failed(String message) = JumpAyahFailedState;
}
