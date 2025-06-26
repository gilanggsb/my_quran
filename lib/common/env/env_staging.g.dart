// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_staging.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env.staging
final class _EnvStaging {
  static const List<int> _enviedkeyflavor = <int>[
    3120194351,
    2720105404,
    3112295740,
    2177235798,
    4121449860,
    3776460372,
    615396743,
  ];

  static const List<int> _envieddataflavor = <int>[
    3120194396,
    2720105416,
    3112295773,
    2177235761,
    4121449965,
    3776460346,
    615396832,
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
    3323227450,
    1774588119,
    1938144711,
    59899287,
    559341400,
    2127501554,
    876125032,
    843252349,
    3574590829,
    2610921740,
    2149558674,
    390080409,
    1012235166,
    1423990310,
    2744413663,
    2800397096,
    2826592177,
    3707888745,
    2348739491,
    863348502,
    2409988267,
    1129416926,
    2909745001,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    3323227474,
    1774588067,
    1938144691,
    59899367,
    559341355,
    2127501512,
    876124999,
    843252306,
    3574590732,
    2610921852,
    2149558779,
    390080439,
    1012235251,
    1423990367,
    2744413614,
    2800397149,
    2826592195,
    3707888648,
    2348739533,
    863348536,
    2409988296,
    1129416881,
    2909744900,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
