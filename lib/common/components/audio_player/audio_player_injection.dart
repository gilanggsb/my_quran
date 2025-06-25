import '../../common.dart';

void audioPlayerInjection() {
  getIt.registerFactory<PlayerWidgetCubit>(() => PlayerWidgetCubit());
}
