// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:my_quran/features/home/presentation/screens/home_screen.dart'
    as _i1;
import 'package:my_quran/features/home/presentation/screens/juz_tab.dart'
    as _i2;
import 'package:my_quran/features/home/presentation/screens/surah_tab.dart'
    as _i4;
import 'package:my_quran/features/splash/splash_screen.dart' as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    JuzRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.JuzTab(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
    SurahRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SurahTab(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.JuzTab]
class JuzRoute extends _i5.PageRouteInfo<void> {
  const JuzRoute({List<_i5.PageRouteInfo>? children})
      : super(
          JuzRoute.name,
          initialChildren: children,
        );

  static const String name = 'JuzRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SurahTab]
class SurahRoute extends _i5.PageRouteInfo<void> {
  const SurahRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SurahRoute.name,
          initialChildren: children,
        );

  static const String name = 'SurahRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
