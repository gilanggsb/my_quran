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
    3691163260,
    1077071412,
    1407610241,
    1217640432,
    2774504830,
    3301686578,
    1422590110,
    873930927,
    696361138,
    3685831343,
    600907852,
  ];

  static const List<int> _envieddataflavor = <int>[
    3691163160,
    1077071441,
    1407610359,
    1217640341,
    2774504722,
    3301686621,
    1422590190,
    873930946,
    696361175,
    3685831361,
    600907832,
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
    2971822400,
    3109580620,
    3556640718,
    215165749,
    3847814334,
    1036774959,
    3088009535,
    928091232,
    3795817431,
    780044119,
    2189922897,
    3073812584,
    524819804,
    105748579,
    4102233464,
    4064110271,
    923797194,
    1510057085,
    3939402279,
    2186700886,
    1730354652,
    4263521962,
    3603775279,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    2971822376,
    3109580600,
    3556640698,
    215165765,
    3847814349,
    1036774933,
    3088009488,
    928091215,
    3795817398,
    780044071,
    2189922872,
    3073812550,
    524819761,
    105748506,
    4102233353,
    4064110282,
    923797176,
    1510056988,
    3939402313,
    2186700920,
    1730354623,
    4263521989,
    3603775298,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
