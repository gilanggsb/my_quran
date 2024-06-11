import 'package:my_quran/common/common.dart';

void themeInjection() {
  //bloc
  getIt.registerLazySingleton<ThemeCubit>(
    () => ThemeCubit(
      storageService: getIt(),
    ),
  );
}
