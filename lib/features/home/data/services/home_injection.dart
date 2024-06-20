import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/home/home.dart';

void homeInjection() {
  //bloc
  getIt.registerFactory<HomeBloc>(
    () => HomeBloc(
      repository: getIt(),
    ),
  );
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
  //repository
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  getIt.registerLazySingleton<QuranRepository>(
    () => QuranRepositoryImpl(
      localDataSource: getIt(),
      remoteDataSource: getIt(),
    ),
  );
  //datasource
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(
        // service: getIt(),
        ),
  );
  getIt.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(
        // service: getIt(),
        ),
  );
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
}
