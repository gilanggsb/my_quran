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
    2039173189,
    1043844787,
    2310803451,
    3039948617,
    1802654255,
    172581402,
    1895106053,
    685217292,
    1170868432,
    1822358531,
  ];

  static const List<int> _envieddataflavor = <int>[
    2039173173,
    1043844801,
    2310803348,
    3039948589,
    1802654298,
    172581497,
    1895106161,
    685217381,
    1170868415,
    1822358637,
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
    4197034223,
    1531806985,
    221526543,
    322371511,
    663242700,
    2559079233,
    2060271330,
    1052654218,
    3155517792,
    467790251,
    386294956,
    4006069336,
    2264307315,
    3320926681,
    4036089419,
    3872804237,
    2961919130,
    3761005741,
    2256394458,
    2298290658,
    2594960747,
    2687130083,
    917111122,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    4197034119,
    1531807101,
    221526651,
    322371527,
    663242687,
    2559079291,
    2060271309,
    1052654245,
    3155517697,
    467790299,
    386294981,
    4006069366,
    2264307230,
    3320926624,
    4036089402,
    3872804344,
    2961919208,
    3761005772,
    2256394420,
    2298290636,
    2594960648,
    2687129996,
    917111103,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
