import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/home/home.dart';

void homeInjection() {
  //bloc
  getIt.registerFactory<HomeBloc>(
    () => HomeBloc(
      repository: getIt(),
    ),
  );
  //repository
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
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
  //usecase
}
