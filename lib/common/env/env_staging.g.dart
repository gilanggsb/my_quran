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
    2712079681,
    2046776183,
    3241698701,
    485547707,
    320667893,
    3560956149,
    3015363736,
  ];

  static const List<int> _envieddataflavor = <int>[
    2712079666,
    2046776067,
    3241698796,
    485547740,
    320667804,
    3560956059,
    3015363839,
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
    1223797880,
    8865269,
    2670925478,
    122962880,
    3411542751,
    3791690860,
    1293930215,
    2825974844,
    2698415846,
    1058708013,
    2156107144,
    1266163045,
    1449725744,
    1337908277,
    2526633967,
    3794739105,
    1250343501,
    1549443064,
    72736874,
    2034230511,
    613213840,
    801221758,
    1901143953,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1223797776,
    8865153,
    2670925522,
    122962864,
    3411542700,
    3791690838,
    1293930184,
    2825974803,
    2698415751,
    1058708061,
    2156107233,
    1266163019,
    1449725789,
    1337908300,
    2526633886,
    3794739156,
    1250343487,
    1549442969,
    72736772,
    2034230465,
    613213939,
    801221649,
    1901144060,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
