import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'common/common.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return BlocProvider(
          create: (context) => getIt.get<ThemeCubit>()..initialization(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              ThemeMode themeMode = context.read<ThemeCubit>().themeMode;
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: AppStyle.lightTheme,
                darkTheme: AppStyle.darkTheme,
                themeMode: themeMode,
                builder: (context, child) {
                  ErrorWidget.builder =
                      (FlutterErrorDetails? flutterErrorDetails) {
                    return CustomErrorView(
                      flutterErrorDetails: flutterErrorDetails,
                    );
                  };
                  return SafeArea(
                    child: LoadingOverlayAlt(child: child ?? const SizedBox()),
                  );
                },
                routerConfig: appRouter.config(
                  navigatorObservers: () => [RouterObserver()],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
