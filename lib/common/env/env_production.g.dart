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
    398392848,
    1435927447,
    135732212,
    4072405824,
    2395604075,
    2408783400,
    613663275,
    307923413,
    3729584910,
    230023048,
  ];

  static const List<int> _envieddataflavor = <int>[
    398392928,
    1435927525,
    135732123,
    4072405796,
    2395603998,
    2408783435,
    613663327,
    307923388,
    3729584993,
    230023142,
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
    1488449341,
    294270117,
    641559920,
    3758589910,
    3901353227,
    1768405367,
    2069388156,
    4281352784,
    2734235709,
    3066189601,
    90118012,
    1485386825,
    1215671596,
    4205937706,
    3300409321,
    1811661030,
    855868204,
    739673973,
    297310460,
    1654786362,
    8379685,
    2158895190,
    2993674722,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1488449365,
    294270161,
    641559812,
    3758589862,
    3901353336,
    1768405325,
    2069388115,
    4281352831,
    2734235740,
    3066189649,
    90117909,
    1485386855,
    1215671617,
    4205937747,
    3300409240,
    1811660947,
    855868254,
    739673876,
    297310354,
    1654786324,
    8379718,
    2158895161,
    2993674639,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
