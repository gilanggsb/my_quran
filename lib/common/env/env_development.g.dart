// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_development.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env.development
final class _EnvDevelopment {
  static const List<int> _enviedkeyflavor = <int>[
    3046344125,
    3935570733,
    1376425616,
    1441983243,
    4059826316,
    2877607819,
    2798030046,
    720506551,
    3248081780,
    3776739188,
    2089861961,
  ];

  static const List<int> _envieddataflavor = <int>[
    3046344153,
    3935570760,
    1376425702,
    1441983342,
    4059826400,
    2877607908,
    2798029998,
    720506586,
    3248081681,
    3776739098,
    2089861949,
  ];

  static final Flavor flavor = Flavor.values.byName(
    String.fromCharCodes(
      List<int>.generate(
        _envieddataflavor.length,
        (int i) => i,
        growable: false,
      ).map((int i) => _envieddataflavor[i] ^ _enviedkeyflavor[i]),
    ),
  );

  static const List<int> _enviedkeybaseUrl = <int>[
    332536592,
    2684392183,
    3077127913,
    629429766,
    1170692840,
    1026317398,
    2325237148,
    3360535110,
    548784245,
    3187257630,
    3437097627,
    3862523920,
    993467939,
    2754471920,
    3409721494,
    3237137251,
    3403748498,
    2511859383,
    2854430343,
    2441459323,
    2012003967,
    527598913,
    3360179059,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    332536696,
    2684392067,
    3077127837,
    629429878,
    1170692763,
    1026317420,
    2325237171,
    3360535145,
    548784148,
    3187257710,
    3437097714,
    3862523966,
    993467982,
    2754471817,
    3409721575,
    3237137174,
    3403748576,
    2511859414,
    2854430441,
    2441459285,
    2012003868,
    527598894,
    3360178974,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
