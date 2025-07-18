import '../../../../common/common.dart';
import '../../../features.dart';

void quranInjection() {
  //bloc
  getIt.registerFactory<JuzCubit>(() => JuzCubit(getJuzs: getIt()));
  getIt.registerFactory<SurahCubit>(() => SurahCubit(getSurahs: getIt()));
  getIt.registerFactory<QuranDetailCubit>(
    () => QuranDetailCubit(getAyahsJuz: getIt(), getFullAyahs: getIt()),
  );
  getIt.registerFactory<DetailAyahCubit>(
    () => DetailAyahCubit(getSurahs: getIt(), saveLastReadAyah: getIt()),
  );
  getIt.registerFactory<PreviewAyahCubit>(
    () => PreviewAyahCubit(
      getSurahs: getIt(),
      getJuzs: getIt(),
      getFullAyahs: getIt(),
      getAyahsJuz: getIt(),
    ),
  );
  getIt.registerFactory<JumpToAyahCubit>(
    () => JumpToAyahCubit(
      getSurahs: getIt(),
      getJuzs: getIt(),
      getFullAyahs: getIt(),
      getAyahsJuz: getIt(),
    ),
  );
  //repository
  getIt.registerLazySingleton<QuranRepository>(
    () => QuranRepositoryImpl(localDataSource: getIt(), remoteDataSource: getIt()),
  );
  //datasource
  getIt.registerLazySingleton<QuranRemoteDataSource>(
    () => QuranRemoteDataSourceImpl(service: getIt()),
  );
  getIt.registerLazySingleton<QuranLocalDataSource>(
    () => QuranLocalDataSourceImpl(localDBService: getIt(), storageService: getIt()),
  );

  //usecase
  getIt.registerLazySingleton<GetSurahs>(() => GetSurahs(repository: getIt()));
  getIt.registerLazySingleton<GetSurah>(() => GetSurah(repository: getIt()));
  getIt.registerLazySingleton<GetJuzs>(() => GetJuzs(repository: getIt()));
  getIt.registerLazySingleton<GetJuz>(() => GetJuz(repository: getIt()));
  getIt.registerLazySingleton<GetAyahs>(() => GetAyahs(repository: getIt()));
  getIt.registerLazySingleton<GetAyahsJuz>(() => GetAyahsJuz(repository: getIt()));
  getIt.registerLazySingleton<GetAyahsThroughout>(() => GetAyahsThroughout(repository: getIt()));
  getIt.registerLazySingleton<GetFullAyahs>(() => GetFullAyahs(repository: getIt()));
  getIt.registerLazySingleton<GetLastReadAyah>(() => GetLastReadAyah(repository: getIt()));
  getIt.registerLazySingleton<SaveLastReadAyah>(() => SaveLastReadAyah(repository: getIt()));
  getIt.registerLazySingleton<GetAyah>(() => GetAyah(repository: getIt()));
}
