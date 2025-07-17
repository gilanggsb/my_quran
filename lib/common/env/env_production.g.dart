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
    655962775,
    3612784059,
    1337906148,
    4103682079,
    1974888501,
    331130265,
    2692024558,
    2743558851,
    2778699454,
    3357054386,
  ];

  static const List<int> _envieddataflavor = <int>[
    655962855,
    3612784073,
    1337906059,
    4103682171,
    1974888512,
    331130362,
    2692024474,
    2743558826,
    2778699473,
    3357054428,
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
    1632171416,
    57611668,
    2375469791,
    557429697,
    1318500470,
    2272693167,
    2641740660,
    2965626701,
    3291826862,
    3381801402,
    2291672525,
    2464659597,
    2368752107,
    1239897534,
    918720983,
    3989407014,
    2601487842,
    1000234513,
    3326337677,
    3846037425,
    142508639,
    2745001233,
    3360277887,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1632171504,
    57611744,
    2375469739,
    557429681,
    1318500357,
    2272693141,
    2641740635,
    2965626722,
    3291826895,
    3381801418,
    2291672484,
    2464659619,
    2368752006,
    1239897543,
    918720934,
    3989407059,
    2601487760,
    1000234608,
    3326337763,
    3846037407,
    142508604,
    2745001342,
    3360277778,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
