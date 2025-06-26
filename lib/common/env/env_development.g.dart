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
    930949787,
    3679444884,
    3181386812,
    1332007426,
    3830875721,
    33671068,
    2341490859,
    2939591258,
    4214670413,
    1595991505,
    383417828,
  ];

  static const List<int> _envieddataflavor = <int>[
    930949887,
    3679444977,
    3181386826,
    1332007527,
    3830875685,
    33671155,
    2341490907,
    2939591223,
    4214670376,
    1595991487,
    383417744,
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
    3566578250,
    2850945745,
    3765580925,
    4283160913,
    3112894350,
    987802008,
    918758170,
    3083925832,
    1296937038,
    2116326479,
    1062828860,
    2492755511,
    2880778238,
    1177761145,
    2573788672,
    3483283169,
    309549024,
    1167846278,
    681403160,
    2603208584,
    3259348790,
    2053424972,
    1208444170,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    3566578210,
    2850945701,
    3765580809,
    4283160865,
    3112894461,
    987802018,
    918758197,
    3083925863,
    1296937007,
    2116326463,
    1062828885,
    2492755481,
    2880778131,
    1177761024,
    2573788785,
    3483283092,
    309548946,
    1167846375,
    681403254,
    2603208614,
    3259348821,
    2053424931,
    1208444263,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
