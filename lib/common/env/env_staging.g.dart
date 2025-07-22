// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_staging.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env.staging
final class _EnvStaging {
  static const List<int> _enviedkeyflavor = <int>[
    4027556439,
    2820375636,
    1305296606,
    1657240307,
    1536396986,
    1140273868,
    3842441486,
  ];

  static const List<int> _envieddataflavor = <int>[
    4027556388,
    2820375584,
    1305296575,
    1657240212,
    1536397011,
    1140273826,
    3842441577,
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
    4038828914,
    3427156672,
    1508131102,
    2336812232,
    650398962,
    2231575828,
    3333452783,
    3317294762,
    2824588405,
    4079263800,
    1976113137,
    403488045,
    3060890756,
    3927574285,
    2613422291,
    3465702090,
    991918182,
    3260573705,
    393092463,
    3264961748,
    4175783477,
    2662277417,
    2096076109,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    4038828826,
    3427156660,
    1508131178,
    2336812216,
    650398849,
    2231575854,
    3333452736,
    3317294725,
    2824588308,
    4079263816,
    1976113048,
    403488003,
    3060890857,
    3927574388,
    2613422242,
    3465702079,
    991918100,
    3260573800,
    393092353,
    3264961786,
    4175783510,
    2662277446,
    2096076064,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
