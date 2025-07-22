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
    49841001,
    827724778,
    3253432728,
    1443307124,
    2528841526,
    1560417741,
    206413154,
    3318179028,
    1268151260,
    444254828,
    865494498,
  ];

  static const List<int> _envieddataflavor = <int>[
    49840909,
    827724687,
    3253432814,
    1443307025,
    2528841562,
    1560417698,
    206413074,
    3318179001,
    1268151225,
    444254722,
    865494422,
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
    1907104957,
    2875662297,
    566090661,
    723573051,
    1969036512,
    4027707811,
    2169940802,
    2893968460,
    318786805,
    2769286361,
    1272039688,
    3258973040,
    4272404446,
    2391538688,
    1124891058,
    2091111659,
    2475244286,
    3338814656,
    2816884436,
    1964768199,
    3059105502,
    1520367822,
    3276589632,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1907104981,
    2875662253,
    566090705,
    723573067,
    1969036435,
    4027707801,
    2169940845,
    2893968483,
    318786708,
    2769286313,
    1272039777,
    3258973022,
    4272404403,
    2391538809,
    1124891075,
    2091111582,
    2475244172,
    3338814625,
    2816884410,
    1964768233,
    3059105469,
    1520367777,
    3276589613,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
