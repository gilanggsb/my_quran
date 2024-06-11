// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_staging.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _EnvStaging {
  static const List<int> _enviedkeyflavor = <int>[
    2519874210,
    3015138617,
    1739322688,
    2403643723,
    2138866914,
    798127343,
    3321750609,
  ];

  static const List<int> _envieddataflavor = <int>[
    2519874257,
    3015138637,
    1739322657,
    2403643692,
    2138866827,
    798127233,
    3321750582,
  ];

  static final Flavor flavor =
      Flavor.values.byName(String.fromCharCodes(List<int>.generate(
    _envieddataflavor.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddataflavor[i] ^ _enviedkeyflavor[i])));

  static const List<int> _enviedkeybaseUrl = <int>[
    993639013,
    2672614642,
    76186409,
    2289353448,
    1386738068,
    3231109255,
    3172639791,
    944984326,
    3446607656,
    470150475,
    1254828389,
    970710167,
    3087267219,
    2964410466,
    304733294,
    4179501440,
    671381224,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    993638925,
    2672614534,
    76186461,
    2289353368,
    1386738151,
    3231109309,
    3172639744,
    944984361,
    3446607693,
    470150458,
    1254828304,
    970710245,
    3087267314,
    2964410380,
    304733248,
    4179501545,
    671381132,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
