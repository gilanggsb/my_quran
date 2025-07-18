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
    1010466177,
    4018950299,
    348995275,
    1023757169,
    3931480377,
    221836196,
    3227725999,
    2938922970,
    1540165604,
    2913696927,
    531906664,
  ];

  static const List<int> _envieddataflavor = <int>[
    1010466277,
    4018950398,
    348995261,
    1023757076,
    3931480405,
    221836235,
    3227726047,
    2938922935,
    1540165505,
    2913697009,
    531906588,
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
    3750475574,
    1921068513,
    4019617306,
    2786593880,
    2467618883,
    800815574,
    2596025959,
    3460585105,
    654859348,
    915039983,
    1451027172,
    2628801613,
    3998244220,
    504374412,
    1743124384,
    4011832759,
    3579680765,
    2073401257,
    2367237816,
    3472735718,
    2707245403,
    2615701965,
    1957216893,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    3750475614,
    1921068437,
    4019617390,
    2786593832,
    2467618864,
    800815596,
    2596025928,
    3460585150,
    654859317,
    915039903,
    1451027085,
    2628801635,
    3998244113,
    504374517,
    1743124433,
    4011832770,
    3579680655,
    2073401288,
    2367237846,
    3472735688,
    2707245368,
    2615701922,
    1957216784,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
