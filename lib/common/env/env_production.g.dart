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
    323989800,
    970470737,
    3465949658,
    2646271226,
    2485498123,
    3275295232,
    3701982131,
    1674035641,
    3261271863,
    3285400017,
  ];

  static const List<int> _envieddataflavor = <int>[
    323989848,
    970470691,
    3465949621,
    2646271134,
    2485498238,
    3275295331,
    3701982151,
    1674035664,
    3261271896,
    3285399999,
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
    4145310909,
    3055576050,
    2922253332,
    2356840131,
    3124672933,
    2129103269,
    1550684917,
    1227357133,
    1184429758,
    3995179609,
    2446784133,
    127487611,
    4099925380,
    1394514236,
    151374863,
    2203850493,
    1452019726,
    2514128190,
    2383200688,
    869341316,
    1891975113,
    2830013727,
    4254896150,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    4145310933,
    3055575942,
    2922253408,
    2356840115,
    3124672982,
    2129103263,
    1550684890,
    1227357154,
    1184429791,
    3995179561,
    2446784236,
    127487573,
    4099925481,
    1394514245,
    151374974,
    2203850376,
    1452019836,
    2514128223,
    2383200734,
    869341354,
    1891975082,
    2830013808,
    4254896251,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
