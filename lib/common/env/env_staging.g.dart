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
    1965833122,
    3882155329,
    703087160,
    3522502574,
    1231790192,
    1215537586,
    1678525155,
  ];

  static const List<int> _envieddataflavor = <int>[
    1965833169,
    3882155317,
    703087193,
    3522502601,
    1231790105,
    1215537628,
    1678525060,
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
    1564068853,
    2975906861,
    1575377617,
    2542897340,
    322297198,
    73537440,
    4126877900,
    225322334,
    3309987037,
    2363794137,
    2826647093,
    380843403,
    1234254123,
    3690467912,
    2918921694,
    1774795620,
    2310397426,
    1636262501,
    4149695314,
    4097732852,
    2852533567,
    2594337020,
    2513511412,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1564068765,
    2975906905,
    1575377573,
    2542897356,
    322297117,
    73537434,
    4126877923,
    225322353,
    3309987004,
    2363794089,
    2826647132,
    380843429,
    1234254150,
    3690467889,
    2918921647,
    1774795537,
    2310397312,
    1636262404,
    4149695292,
    4097732826,
    2852533596,
    2594336915,
    2513511321,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
