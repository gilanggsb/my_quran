import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

import '../../main_test.mocks.dart';
import '../home.dart';

void mainSurahCubit() {
  late MockInjectorService injector;
  late MockGetSurahs getSurahs;
  late SurahCubit cubit;

  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    getSurahs = MockGetSurahs();
    cubit = SurahCubit(getSurahs: getSurahs);
  });

  tearDownAll(() {
    cubit.close();
  });

  final responseSurahs = BaseResponse.fromJson(
    surahsMock,
    (json) => (json as List).toResponseList((json) => Surah.fromJson(json)),
  );

  blocTest<SurahCubit, SurahState>(
    'emits [SurahState.loaded] when getData.',
    build: () {
      when(getSurahs(const NoParams())).thenAnswer((realInvocation) async => responseSurahs);
      return cubit;
    },
    act: (cubit) => cubit.getData(),
    expect: () async {
      return <SurahState>[const SurahState.loading(), const SurahState.loaded()];
    },
  );
}
