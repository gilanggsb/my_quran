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
    3888089218,
    2599992619,
    2314447278,
    2743528909,
    2987319491,
    4032745005,
    2104615805,
    2671565325,
    3042862786,
    2903624216,
  ];

  static const List<int> _envieddataflavor = <int>[
    3888089330,
    2599992665,
    2314447297,
    2743528873,
    2987319478,
    4032745038,
    2104615689,
    2671565412,
    3042862765,
    2903624310,
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
    1348299979,
    252528914,
    2975727239,
    2710157975,
    3251481686,
    3007323612,
    3707377410,
    1289459804,
    1177012304,
    4049186973,
    1579845620,
    1488552387,
    1503617727,
    3478179196,
    280702803,
    91702853,
    3066871431,
    1065009641,
    1033831579,
    710245389,
    1445020803,
    2406787547,
    2174755694,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1348299939,
    252528998,
    2975727347,
    2710158055,
    3251481637,
    3007323622,
    3707377453,
    1289459827,
    1177012273,
    4049187053,
    1579845533,
    1488552429,
    1503617746,
    3478179077,
    280702754,
    91702832,
    3066871541,
    1065009544,
    1033831669,
    710245411,
    1445020896,
    2406787508,
    2174755587,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
