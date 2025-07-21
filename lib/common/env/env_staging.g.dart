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
    4228852434,
    3696891380,
    4214238803,
    1574434460,
    4289876789,
    2830664319,
    4224051476,
  ];

  static const List<int> _envieddataflavor = <int>[
    4228852385,
    3696891264,
    4214238770,
    1574434555,
    4289876828,
    2830664209,
    4224051571,
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
    1858386349,
    1684622316,
    3801849817,
    1201955725,
    1133706234,
    4205259216,
    1752006228,
    1041398817,
    1296832015,
    2805456034,
    2193333629,
    3297226180,
    338170545,
    3173829958,
    4265793842,
    10246124,
    3729417696,
    685636184,
    3227635874,
    1262246005,
    224982441,
    1424666544,
    61137046,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1858386373,
    1684622232,
    3801849773,
    1201955837,
    1133706121,
    4205259242,
    1752006267,
    1041398798,
    1296832110,
    2805456082,
    2193333524,
    3297226218,
    338170588,
    3173829951,
    4265793859,
    10246041,
    3729417618,
    685636153,
    3227635916,
    1262245979,
    224982474,
    1424666591,
    61137147,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
