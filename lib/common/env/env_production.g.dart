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
    3539647725,
    659598816,
    467601139,
    632694419,
    1824536110,
    2982201527,
    1657022262,
    767380356,
    2467954910,
    1530001867,
  ];

  static const List<int> _envieddataflavor = <int>[
    3539647645,
    659598738,
    467601052,
    632694519,
    1824536155,
    2982201556,
    1657022274,
    767380461,
    2467954865,
    1530001829,
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
    1840016734,
    3006051860,
    1869924904,
    1418034090,
    340538632,
    718139837,
    2391728629,
    719529595,
    4221261062,
    3523154984,
    1485590426,
    920818871,
    4036550939,
    1413551495,
    3278529995,
    911081554,
    4152944628,
    384233641,
    2979954031,
    175519783,
    792604638,
    1501362469,
    380161465,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1840016694,
    3006051936,
    1869924956,
    1418034138,
    340538747,
    718139783,
    2391728602,
    719529556,
    4221261159,
    3523155032,
    1485590515,
    920818841,
    4036551030,
    1413551614,
    3278529978,
    911081511,
    4152944518,
    384233672,
    2979953921,
    175519753,
    792604605,
    1501362506,
    380161492,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
