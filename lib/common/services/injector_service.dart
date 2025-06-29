import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../features/features.dart';
import '../common.dart';

final GetIt getIt = GetIt.instance;

class InjectorService {
  const InjectorService();

  static Future<void> create({bool isTesting = false}) async {
    const injectorService = InjectorService();
    injectorService.setupLocator(isTesting: isTesting);
    await getIt.allReady();
  }

  Future<void> setupLocator({bool isTesting = false}) async {
    //module
    moduleInjection(isTesting: isTesting);
    //service
    serviceInjection(isTesting: isTesting);
    //feature
    themeInjection();
    homeInjection();
    quranInjection();
    audioPlayerInjection();
    bookmarkInjection();
  }

  void serviceInjection({bool isTesting = false}) {
    getIt.registerLazySingleton<ApiService>(
      () => ApiServiceImpl(dio: getIt(), isTesting: isTesting),
    );
    if (!isTesting) {
      getIt.registerLazySingleton<StorageService>(() => StorageServiceImpl(getIt<GetStorage>()));
    }
    getIt.registerLazySingleton<NetworkService>(
      () => NetworkServiceImpl(getIt(), isTesting: isTesting),
    );
    getIt.registerSingletonAsync<HiveService>(() async {
      HiveService db = HiveServiceImpl();
      await db.init();
      return db;
    });
  }

  void moduleInjection({bool isTesting = false}) {
    if (!isTesting) {
      getIt.registerSingletonAsync<GetStorage>(() async {
        await GetStorage.init();
        return GetStorage();
      });
    }
    getIt.registerLazySingleton<Dio>(() => Dio());
    getIt.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker.createInstance(),
    );
    getIt.registerSingleton<AppRouter>(AppRouter());
  }
}
