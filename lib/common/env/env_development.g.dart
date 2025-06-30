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
    3452507333,
    279647393,
    1495312516,
    583067760,
    799450852,
    2833405747,
    4234085523,
    2512395669,
    1362510746,
    3125453098,
    1269247768,
  ];

  static const List<int> _envieddataflavor = <int>[
    3452507297,
    279647428,
    1495312626,
    583067669,
    799450760,
    2833405788,
    4234085603,
    2512395768,
    1362510847,
    3125453124,
    1269247852,
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
    2377119919,
    86007960,
    4096396015,
    3863005017,
    1075458285,
    1569885138,
    3687820846,
    175653372,
    1674003407,
    4003489436,
    2977779903,
    1355890508,
    1071168020,
    3938809152,
    1132110964,
    3673082217,
    3814954421,
    1232157125,
    1036805465,
    478422806,
    2799825948,
    298910274,
    2115497335,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    2377119943,
    86008044,
    4096395931,
    3863004969,
    1075458206,
    1569885160,
    3687820801,
    175653331,
    1674003374,
    4003489516,
    2977779926,
    1355890530,
    1071168121,
    3938809145,
    1132110853,
    3673082140,
    3814954439,
    1232157092,
    1036805431,
    478422840,
    2799826047,
    298910253,
    2115497242,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
