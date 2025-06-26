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
    3665953344,
    4143948889,
    124351382,
    215747509,
    965011751,
    67392355,
    450510723,
  ];

  static const List<int> _envieddataflavor = <int>[
    3665953331,
    4143948845,
    124351479,
    215747538,
    965011790,
    67392269,
    450510820,
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
    4144718313,
    745056119,
    1013954042,
    1784748397,
    2109013182,
    3245556823,
    2434718943,
    2333190651,
    3430821935,
    3972442895,
    1021234790,
    3879656841,
    2674688504,
    1473171087,
    30151472,
    2302726883,
    717437832,
    3482495281,
    564305940,
    1882070300,
    3548069640,
    52547130,
    1283357862,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    4144718209,
    745056003,
    1013953934,
    1784748317,
    2109013197,
    3245556845,
    2434718960,
    2333190612,
    3430821966,
    3972443007,
    1021234703,
    3879656871,
    2674688405,
    1473171190,
    30151489,
    2302726806,
    717437946,
    3482495312,
    564306042,
    1882070322,
    3548069739,
    52547157,
    1283357899,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
