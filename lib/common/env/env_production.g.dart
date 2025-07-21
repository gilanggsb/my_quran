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
    996134704,
    320874307,
    3682744582,
    2888428368,
    3448261512,
    1107659160,
    902242419,
    1629110660,
    232838146,
    1286406972,
  ];

  static const List<int> _envieddataflavor = <int>[
    996134720,
    320874289,
    3682744681,
    2888428340,
    3448261629,
    1107659259,
    902242311,
    1629110765,
    232838253,
    1286406994,
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
    98807831,
    3557704782,
    884622602,
    4288013364,
    94971454,
    2372677620,
    1878126494,
    941353730,
    2599863412,
    924661054,
    2323804161,
    1288165013,
    475755034,
    257335618,
    588990986,
    1937283719,
    880176839,
    1945826944,
    2042885580,
    3657287024,
    2857513494,
    1769810794,
    3462438115,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    98807935,
    3557704762,
    884622718,
    4288013380,
    94971469,
    2372677582,
    1878126513,
    941353773,
    2599863317,
    924661070,
    2323804264,
    1288165051,
    475755127,
    257335611,
    588991099,
    1937283826,
    880176821,
    1945827041,
    2042885538,
    3657287006,
    2857513589,
    1769810693,
    3462438030,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
