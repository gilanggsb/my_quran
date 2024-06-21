// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:my_quran/common/routes/root_wrapper.dart' as _i4;
import 'package:my_quran/features/alquran/presentation/screens/juz_tab.dart'
    as _i2;
import 'package:my_quran/features/alquran/presentation/screens/quran_detail_screen.dart'
    as _i3;
import 'package:my_quran/features/alquran/presentation/screens/surah_tab.dart'
    as _i6;
import 'package:my_quran/features/features.dart' as _i9;
import 'package:my_quran/features/home/presentation/screens/home_screen.dart'
    as _i1;
import 'package:my_quran/features/splash/splash_screen.dart' as _i5;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    JuzRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.JuzTab(),
      );
    },
    QuranDetailRoute.name: (routeData) {
      final args = routeData.argsAs<QuranDetailRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.QuranDetailScreen(
          key: args.key,
          params: args.params,
        ),
      );
    },
    RootWrapper.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(child: const _i4.RootWrapper()),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplashScreen(),
      );
    },
    SurahRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SurahTab(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.JuzTab]
class JuzRoute extends _i7.PageRouteInfo<void> {
  const JuzRoute({List<_i7.PageRouteInfo>? children})
      : super(
          JuzRoute.name,
          initialChildren: children,
        );

  static const String name = 'JuzRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.QuranDetailScreen]
class QuranDetailRoute extends _i7.PageRouteInfo<QuranDetailRouteArgs> {
  QuranDetailRoute({
    _i8.Key? key,
    required _i9.QuranDetailParams params,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          QuranDetailRoute.name,
          args: QuranDetailRouteArgs(
            key: key,
            params: params,
          ),
          initialChildren: children,
        );

  static const String name = 'QuranDetailRoute';

  static const _i7.PageInfo<QuranDetailRouteArgs> page =
      _i7.PageInfo<QuranDetailRouteArgs>(name);
}

class QuranDetailRouteArgs {
  const QuranDetailRouteArgs({
    this.key,
    required this.params,
  });

  final _i8.Key? key;

  final _i9.QuranDetailParams params;

  @override
  String toString() {
    return 'QuranDetailRouteArgs{key: $key, params: $params}';
  }
}

/// generated route for
/// [_i4.RootWrapper]
class RootWrapper extends _i7.PageRouteInfo<void> {
  const RootWrapper({List<_i7.PageRouteInfo>? children})
      : super(
          RootWrapper.name,
          initialChildren: children,
        );

  static const String name = 'RootWrapper';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SurahTab]
class SurahRoute extends _i7.PageRouteInfo<void> {
  const SurahRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SurahRoute.name,
          initialChildren: children,
        );

  static const String name = 'SurahRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
