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
    3816662862,
    1917776756,
    2909749497,
    1636217116,
    1853633877,
    299306320,
    1792762703,
    2735598765,
    2408245314,
    72021554,
  ];

  static const List<int> _envieddataflavor = <int>[
    3816662846,
    1917776646,
    2909749398,
    1636217208,
    1853633824,
    299306291,
    1792762683,
    2735598788,
    2408245293,
    72021596,
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
    506012827,
    2801494268,
    316498261,
    1087664989,
    3322845834,
    2884303950,
    3612756294,
    531767014,
    2078407347,
    243553680,
    1360009939,
    3103087371,
    2227736998,
    2322503954,
    3203805860,
    1312126533,
    4241126889,
    3805115078,
    3073234383,
    1987471975,
    2509190726,
    4096167322,
    2947536895,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    506012915,
    2801494152,
    316498209,
    1087664941,
    3322845945,
    2884303988,
    3612756329,
    531766985,
    2078407378,
    243553760,
    1360009914,
    3103087397,
    2227737035,
    2322504043,
    3203805909,
    1312126512,
    4241126811,
    3805115047,
    3073234337,
    1987471945,
    2509190693,
    4096167413,
    2947536786,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
