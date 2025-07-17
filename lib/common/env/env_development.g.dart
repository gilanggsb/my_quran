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
    2732215410,
    202255827,
    4206354260,
    2424214111,
    2898222270,
    305696380,
    1339484116,
    2299586985,
    2217741234,
    1532503856,
    4021777082,
  ];

  static const List<int> _envieddataflavor = <int>[
    2732215318,
    202255798,
    4206354210,
    2424214074,
    2898222290,
    305696275,
    1339484068,
    2299587012,
    2217741271,
    1532503902,
    4021777102,
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
    3636366671,
    362278600,
    103681750,
    909317101,
    868759541,
    2499007125,
    2235594546,
    2001373151,
    3292479674,
    3924494628,
    1418480191,
    3803374720,
    556260704,
    3046335487,
    1758623581,
    730410723,
    141796685,
    1274052465,
    2486592116,
    3300078175,
    1015733363,
    3631105568,
    76662203,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    3636366631,
    362278588,
    103681698,
    909317021,
    868759430,
    2499007151,
    2235594525,
    2001373168,
    3292479707,
    3924494676,
    1418480214,
    3803374766,
    556260621,
    3046335366,
    1758623532,
    730410646,
    141796671,
    1274052368,
    2486592026,
    3300078193,
    1015733264,
    3631105615,
    76662230,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
