import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

import '../../main_test.mocks.dart';
import '../home.dart';

@GenerateNiceMocks([
  MockSpec<GetSurahs>(onMissingStub: OnMissingStub.returnDefault),
])
void mainGetSurahUseCase() {
  late MockInjectorService injector;
  late MockGetSurahs getSurahs;

  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    getSurahs = MockGetSurahs();
  });

  test('Should return list surah with length 114', () async {
    // arrange
    when(getSurahs(const NoParams())).thenAnswer(
      (realInvocation) async => BaseResponse<List<Surah>?>.fromJson(
        surahsMock,
        (json) => (json as List).toResponseList<Surah>(
          (element) => Surah.fromJson(element),
        ),
      ),
    );
    // act
    final responseSurahs = await getSurahs(const NoParams());
    // assert
    expect(responseSurahs.data?.length, 114);
    verify(getSurahs(const NoParams()));
  });
}
