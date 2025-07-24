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
    374671166,
    2009466859,
    2559440579,
    1306343850,
    3719964954,
    2820348370,
    1896702857,
  ];

  static const List<int> _envieddataflavor = <int>[
    374671181,
    2009466783,
    2559440546,
    1306343885,
    3719965043,
    2820348348,
    1896702958,
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
    1338695455,
    2991259656,
    2521510013,
    460495517,
    1476498073,
    3050550212,
    2001142126,
    3332718810,
    2207825548,
    4271127128,
    1905740841,
    2883577743,
    3634015997,
    357525970,
    3360337800,
    2583580436,
    3689449843,
    580385049,
    2754489845,
    1891413814,
    629238931,
    224270936,
    3423429522,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1338695543,
    2991259772,
    2521509897,
    460495597,
    1476498154,
    3050550270,
    2001142081,
    3332718837,
    2207825645,
    4271127080,
    1905740864,
    2883577761,
    3634015888,
    357525931,
    3360337913,
    2583580513,
    3689449729,
    580385144,
    2754489755,
    1891413784,
    629239024,
    224270903,
    3423429631,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
