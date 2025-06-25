// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_production.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env.production
final class _EnvProduction {
  static const List<int> _enviedkeyflavor = <int>[
    2497416604,
    2525287741,
    3000361230,
    4279542332,
    2002271400,
    1539056063,
    395025450,
    4114066845,
    184106868,
    2094659059,
  ];

  static const List<int> _envieddataflavor = <int>[
    2497416684,
    2525287759,
    3000361313,
    4279542360,
    2002271453,
    1539056092,
    395025502,
    4114066932,
    184106779,
    2094658973,
  ];

  static final Flavor flavor =
      Flavor.values.byName(String.fromCharCodes(List<int>.generate(
    _envieddataflavor.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddataflavor[i] ^ _enviedkeyflavor[i])));

  static const List<int> _enviedkeybaseUrl = <int>[
    2364932510,
    1170345529,
    1212344692,
    1382284608,
    318364640,
    2173422934,
    755097871,
    3761094129,
    107518391,
    2840824585,
    3103639071,
    1542265613,
    1630564169,
    1888425090,
    676146795,
    3661546968,
    1228032979,
    3504302194,
    1945516314,
    2232958108,
    3726403623,
    4009147264,
    2835852809,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    2364932598,
    1170345549,
    1212344576,
    1382284592,
    318364563,
    2173422956,
    755097888,
    3761094110,
    107518422,
    2840824697,
    3103639158,
    1542265635,
    1630564132,
    1888425211,
    676146714,
    3661546925,
    1228032929,
    3504302099,
    1945516404,
    2232958130,
    3726403652,
    4009147375,
    2835852900,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
