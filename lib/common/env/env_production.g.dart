// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_production.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _EnvProduction {
  static const List<int> _enviedkeyflavor = <int>[
    2424854721,
    3912063651,
    2368317338,
    3976545280,
    3167018759,
    3514628951,
    1962603366,
    3101930896,
    1556319282,
    1078576816,
  ];

  static const List<int> _envieddataflavor = <int>[
    2424854705,
    3912063697,
    2368317429,
    3976545380,
    3167018866,
    3514628916,
    1962603282,
    3101931001,
    1556319325,
    1078576862,
  ];

  static final Flavor flavor =
      Flavor.values.byName(String.fromCharCodes(List<int>.generate(
    _envieddataflavor.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddataflavor[i] ^ _enviedkeyflavor[i])));

  static const List<int> _enviedkeybaseUrl = <int>[
    383987051,
    88078054,
    3858604018,
    1305471472,
    3929056998,
    2297279538,
    1900990919,
    644006807,
    4067084001,
    19921829,
    2624965221,
    873592425,
    1504697356,
    1681652086,
    1009332716,
    229034638,
    645563943,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    383986947,
    88077970,
    3858603910,
    1305471360,
    3929056917,
    2297279496,
    1900990952,
    644006840,
    4067083908,
    19921876,
    2624965136,
    873592347,
    1504697453,
    1681651992,
    1009332674,
    229034727,
    645563971,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
