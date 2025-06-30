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
    845211729,
    1603686318,
    1279928708,
    2580343671,
    2187223502,
    1322162486,
    1663788441,
  ];

  static const List<int> _envieddataflavor = <int>[
    845211682,
    1603686362,
    1279928805,
    2580343568,
    2187223463,
    1322162520,
    1663788542,
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
    1982910103,
    1214939111,
    2133154536,
    2558945215,
    2034580373,
    703094680,
    664812843,
    3551350632,
    1610677321,
    1622743810,
    3757183987,
    1833358167,
    4177722535,
    51289792,
    1765897773,
    1603470596,
    3788460971,
    2185002613,
    3332029871,
    2246847731,
    2298735479,
    838339432,
    3937111348,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    1982910207,
    1214939027,
    2133154460,
    2558945231,
    2034580454,
    703094690,
    664812804,
    3551350599,
    1610677288,
    1622743922,
    3757183898,
    1833358201,
    4177722570,
    51289785,
    1765897820,
    1603470705,
    3788461017,
    2185002516,
    3332029889,
    2246847709,
    2298735380,
    838339335,
    3937111385,
  ];

  static final String baseUrl = String.fromCharCodes(
    List<int>.generate(
      _envieddatabaseUrl.length,
      (int i) => i,
      growable: false,
    ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]),
  );
}
