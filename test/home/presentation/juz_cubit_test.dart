import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

import '../../main_test.mocks.dart';
import '../home.dart';

@GenerateNiceMocks([
  MockSpec<GetJuzs>(onMissingStub: OnMissingStub.returnDefault),
])
void mainJuzCubit() {
  late MockInjectorService injector;
  late MockGetJuzs getJuzs;
  late JuzCubit cubit;

  setUp(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    getJuzs = MockGetJuzs();
    cubit = JuzCubit(getJuzs: getJuzs);
  });

  tearDownAll(() {
    cubit.close();
  });

  final responseJuzs = BaseResponse.fromJson(
    juzsMock,
    (json) => (json as List).toResponseList(
      (json) => Juz.fromJson(json),
    ),
  );

  blocTest<JuzCubit, JuzState>(
    'emits [JuzsState.loaded] when getData.',
    build: () {
      when(getJuzs(const NoParams()))
          .thenAnswer((realInvocation) async => responseJuzs);
      return cubit;
    },
    act: (cubit) => cubit.getData(),
    expect: () async {
      return <JuzState>[const JuzState.loading(), const JuzState.loaded()];
    },
  );
}
