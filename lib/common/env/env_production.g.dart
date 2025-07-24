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
    2498602846,
    1863030359,
    28659487,
    2841173289,
    517751113,
    3134555474,
    2300804897,
    2157138528,
    2238669218,
    1442117993,
  ];

  static const List<int> _envieddataflavor = <int>[
    2498602798,
    1863030309,
    28659568,
    2841173325,
    517751100,
    3134555441,
    2300804949,
    2157138441,
    2238669261,
    1442117895,
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
    2314675158,
    1265642178,
    921434125,
    355793180,
    229677312,
    1358230166,
    152511007,
    68628037,
    67977980,
    1262528030,
    903112262,
    3408263658,
    3652773454,
    3417368779,
    793205110,
    2144759474,
    42758931,
    1622322682,
    1261778454,
    990172651,
    629938583,
    3650181539,
    1545040357,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    2314675134,
    1265642166,
    921434233,
    355793260,
    229677427,
    1358230188,
    152511024,
    68628074,
    67977885,
    1262528110,
    903112239,
    3408263620,
    3652773411,
    3417368754,
    793204999,
    2144759495,
    42759009,
    1622322587,
    1261778552,
    990172613,
    629938676,
    3650181580,
    1545040264,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
