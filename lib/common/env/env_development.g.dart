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
    269773881,
    3144364350,
    3806679529,
    4041911751,
    3077847696,
    578057055,
    3467667079,
    3752036062,
    1170545073,
    4023141799,
    3391672347,
  ];

  static const List<int> _envieddataflavor = <int>[
    269773917,
    3144364379,
    3806679455,
    4041911714,
    3077847804,
    578057008,
    3467667191,
    3752036019,
    1170545108,
    4023141833,
    3391672431,
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
    3744766182,
    63376838,
    922562347,
    746495160,
    2501627032,
    4254776129,
    2126104903,
    1067875807,
    840451202,
    3507890526,
    2250709941,
    2235493426,
    3338660860,
    2416228950,
    4196062971,
    4229701879,
    2721448821,
    3722515429,
    3118924759,
    1040655514,
    4212267383,
    2445060760,
    1499932385,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    3744766094,
    63376818,
    922562399,
    746495176,
    2501627115,
    4254776187,
    2126104936,
    1067875824,
    840451299,
    3507890478,
    2250709980,
    2235493404,
    3338660753,
    2416228911,
    4196062858,
    4229701762,
    2721448711,
    3722515332,
    3118924729,
    1040655540,
    4212267284,
    2445060855,
    1499932300,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
