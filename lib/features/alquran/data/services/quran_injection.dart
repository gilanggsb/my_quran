import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

void quranInjection() {
  //bloc
  getIt.registerFactory<JuzCubit>(
    () => JuzCubit(
      getJuzs: getIt(),
    ),
  );
  getIt.registerFactory<SurahCubit>(
    () => SurahCubit(
      getSurahs: getIt(),
    ),
  );
  getIt.registerFactory<QuranDetailCubit>(
    () => QuranDetailCubit(
      getAyahsThroughout: getIt(),
      getAyahsJuz: getIt(),
    ),
  );
  //repository
  getIt.registerLazySingleton<QuranRepository>(
    () => QuranRepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<QuranRemoteDataSource>(
    () => QuranRemoteDataSourceImpl(
      service: getIt(),
    ),
  );
  getIt.registerLazySingleton<QuranLocalDataSource>(
    () => QuranLocalDataSourceImpl(
        // service: getIt(),
        ),
  );

  //usecase
  getIt.registerLazySingleton<GetSurahs>(
    () => GetSurahs(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetSurah>(
    () => GetSurah(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetJuzs>(
    () => GetJuzs(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetJuz>(
    () => GetJuz(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetAyahs>(
    () => GetAyahs(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetAyahsJuz>(
    () => GetAyahsJuz(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetAyahsThroughout>(
    () => GetAyahsThroughout(
      repository: getIt(),
    ),
  );
}
