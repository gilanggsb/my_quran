part of 'jump_to_ayah_cubit.dart';

@freezed
class JumpToAyahState with _$JumpToAyahState {
  const factory JumpToAyahState.initial() = JumpToAyahInitialState;
  const factory JumpToAyahState.loading() = JumpToAyahLoadingState;
  const factory JumpToAyahState.loaded() = JumpToAyahLoadedState;
  const factory JumpToAyahState.searchingSurahOrJuz() = JumpToAyahSearchingSurahOrJuzState;
  const factory JumpToAyahState.failed(String message) = JumpToAyahFailedState;
}
