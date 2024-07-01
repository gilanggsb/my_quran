import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';

import '../../main_test.mocks.dart';
import '../home.dart';

@GenerateNiceMocks([
  MockSpec<QuranRepository>(onMissingStub: OnMissingStub.returnDefault),
])
void mainQuranRepository() {
  late MockInjectorService injector;
  late MockQuranRepository repository;

  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    repository = MockQuranRepository();
  });

  group('Surah test', () {
    test('Should return instance of BaseResponse<List<Surah?>>', () async {
      // arrange
      when(repository.getSurahs()).thenAnswer(
        (realInvocation) async => BaseResponse<List<Surah>>.fromJson(
          surahsMock,
          (json) => (json as List).toResponseList<Surah>(
            (element) => Surah.fromJson(element),
          ),
        ),
      );
      // act
      final responseSurahs = await repository.getSurahs();
      // assert
      expect(responseSurahs is BaseResponse<List<Surah>>, true);
      verify(repository.getSurahs());
    });

    test('Should return instance of BaseResponse<Surah>', () async {
      // arrange
      when(repository.getSurah(1)).thenAnswer(
        (realInvocation) async => BaseResponse<Surah>.fromJson(
          surahMock,
          (json) => Surah.fromJson(json),
        ),
      );
      // act
      final responseSurahs = await repository.getSurah(1);
      // assert
      expect(responseSurahs is BaseResponse<Surah>, true);
      verify(repository.getSurah(1));
    });
  });

  group('Juz test', () {
    test('Should return instance of BaseResponse<List<Juz?>>', () async {
      // arrange
      when(repository.getJuzs()).thenAnswer(
        (realInvocation) async => BaseResponse<List<Juz>>.fromJson(
          juzsMock,
          (json) => (json as List).toResponseList<Juz>(
            (element) => Juz.fromJson(element),
          ),
        ),
      );
      // act
      final responseSurahs = await repository.getJuzs();
      // assert
      expect(responseSurahs is BaseResponse<List<Juz>>, true);
      verify(repository.getJuzs());
    });

    test('Should return instance of BaseResponse<Juz>', () async {
      // arrange
      when(repository.getJuz(1)).thenAnswer(
        (realInvocation) async => BaseResponse<Juz>.fromJson(
          juzMock,
          (json) => Juz.fromJson(json),
        ),
      );
      // act
      final responseJuzs = await repository.getJuz(1);
      // assert
      expect(responseJuzs is BaseResponse<Juz>, true);
      verify(repository.getJuz(1));
    });
  });

  group(
    'Ayah test',
    () {
      test('Should return instance of BaseResponse<List<Ayah>> in juz',
          () async {
        // arrange
        when(repository.getAyahsJuz(1)).thenAnswer(
          (realInvocation) async => BaseResponse<List<Ayah>>.fromJson(
            ayahsJuzMock,
            (json) => (json as List).toResponseList<Ayah>(
              (element) => Ayah.fromJson(element),
            ),
          ),
        );
        // act
        final responseJuzs = await repository.getAyahsJuz(1);
        // assert
        expect(responseJuzs is BaseResponse<List<Ayah>>, true);
        verify(repository.getAyahsJuz(1));
      });

      test('Should instance of BaseResponse<List<Ayah>>', () async {
        // arrange
        const ayahPagination = AyahPagination(length: 4, page: 1);
        when(repository.getAyahs(ayahPagination)).thenAnswer(
          (realInvocation) async => BaseResponse<List<Ayah>>.fromJson(
            ayahPage1Length4Mock,
            (json) => (json as List).toResponseList<Ayah>(
              (element) => Ayah.fromJson(element),
            ),
          ),
        );
        // act
        final responseJuzs = await repository.getAyahs(ayahPagination);
        // assert
        expect(responseJuzs is BaseResponse<List<Ayah>>, true);
        verify(repository.getAyahs(ayahPagination));
      });
    },
  );
}
