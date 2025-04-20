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
    712036625,
    96010746,
    4272355303,
    3045235468,
    1366014396,
    2661463409,
    3048891175,
    2932278069,
    1110140313,
    3481852163,
  ];

  static const List<int> _envieddataflavor = <int>[
    712036705,
    96010632,
    4272355208,
    3045235560,
    1366014409,
    2661463314,
    3048891219,
    2932278108,
    1110140406,
    3481852269,
  ];

  static final Flavor flavor =
      Flavor.values.byName(String.fromCharCodes(List<int>.generate(
    _envieddataflavor.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddataflavor[i] ^ _enviedkeyflavor[i])));

  static const List<int> _enviedkeybaseUrl = <int>[
    2214728381,
    1784239417,
    433344812,
    915666360,
    3516994782,
    1796093420,
    1244745296,
    2985076303,
    2906680317,
    3019279894,
    3274191724,
    4294928812,
    3086562246,
    3821428676,
    3204983816,
    3784569675,
    950775595,
    1278082441,
    1027448939,
    1278786527,
    1354664646,
    1062977764,
    2980865099,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    2214728405,
    1784239437,
    433344856,
    915666376,
    3516994733,
    1796093398,
    1244745343,
    2985076320,
    2906680220,
    3019279974,
    3274191621,
    4294928770,
    3086562219,
    3821428669,
    3204983929,
    3784569662,
    950775641,
    1278082536,
    1027448837,
    1278786545,
    1354664613,
    1062977675,
    2980865062,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
