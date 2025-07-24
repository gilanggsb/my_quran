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
    3052327018,
    1723485048,
    223472329,
    3817554624,
    1047894109,
    2340436665,
    251456958,
    4902070,
    3531502639,
    582055391,
    3640836209,
  ];

  static const List<int> _envieddataflavor = <int>[
    3052326926,
    1723484957,
    223472319,
    3817554597,
    1047894065,
    2340436694,
    251456974,
    4902107,
    3531502666,
    582055345,
    3640836101,
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
    3262112399,
    2901954762,
    2962186752,
    2210572662,
    2643031869,
    207009298,
    3766542183,
    17455672,
    1501742636,
    3460121286,
    233103746,
    1547137222,
    959775168,
    2154660846,
    3642556473,
    4270278675,
    2764283235,
    26693028,
    100960133,
    791631976,
    1766545466,
    3263033169,
    1523650147,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    3262112487,
    2901954750,
    2962186868,
    2210572550,
    2643031886,
    207009320,
    3766542152,
    17455639,
    1501742669,
    3460121270,
    233103851,
    1547137256,
    959775149,
    2154660759,
    3642556488,
    4270278758,
    2764283153,
    26693061,
    100960235,
    791631942,
    1766545497,
    3263033150,
    1523650062,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
