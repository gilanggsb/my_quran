// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_production.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _EnvProduction {
  static const List<int> _enviedkeyflavor = <int>[
    2649533432,
    3339619423,
    1730747014,
    3523009896,
    41933411,
    2590766573,
    1466180011,
    4167800699,
    2501641867,
    1024136889,
  ];

  static const List<int> _envieddataflavor = <int>[
    2649533320,
    3339619373,
    1730747113,
    3523009804,
    41933334,
    2590766478,
    1466180063,
    4167800594,
    2501641956,
    1024136919,
  ];

  static final Flavor flavor =
      Flavor.values.byName(String.fromCharCodes(List<int>.generate(
    _envieddataflavor.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddataflavor[i] ^ _enviedkeyflavor[i])));

  static const List<int> _enviedkeybaseUrl = <int>[
    2476562965,
    2950406964,
    3468755972,
    3906432303,
    437588709,
    843457242,
    1103766619,
    2436839365,
    3257260770,
    1939454647,
    2817246905,
    2403955311,
    3786146350,
    2774303579,
    3854293784,
    3501075361,
    3153728779,
    1986679939,
    3338472126,
    647322125,
    237044778,
    2451301996,
    3638808494,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    2476563069,
    2950406976,
    3468756080,
    3906432351,
    437588630,
    843457248,
    1103766644,
    2436839402,
    3257260675,
    1939454663,
    2817246928,
    2403955265,
    3786146371,
    2774303522,
    3854293865,
    3501075412,
    3153728889,
    1986680034,
    3338472144,
    647322147,
    237044809,
    2451301891,
    3638808515,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
