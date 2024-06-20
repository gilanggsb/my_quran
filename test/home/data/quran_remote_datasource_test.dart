import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_quran/common/common.dart';
import 'package:my_quran/features/features.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../main_test.mocks.dart';
import '../home.dart';

@GenerateNiceMocks([
  MockSpec<QuranRemoteDataSource>(onMissingStub: OnMissingStub.returnDefault)
])
void mainQuranRemoteDataSource() {
  late MockQuranRemoteDataSource remoteDataSource;
  late MockInjectorService injector;

  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
    injector = MockInjectorService();
    await injector.setupLocator(isTesting: true);
    remoteDataSource = MockQuranRemoteDataSource();
  });

  group(
    'Surah test',
    () {
      test('Should return list surah with length 114', () async {
        // arrange
        when(remoteDataSource.getSurahs()).thenAnswer(
          (realInvocation) async => BaseResponse<List<Surah>>.fromJson(
            surahsMock,
            (json) => (json as List).toResponseList<Surah>(
              (element) => Surah.fromJson(element),
            ),
          ),
        );
        // act
        final responseSurahs = await remoteDataSource.getSurahs();
        // assert
        expect(responseSurahs.data?.length, 114);
        verify(remoteDataSource.getSurahs());
      });

      test('Should return surah with name id Al-Fatihah', () async {
        // arrange
        when(remoteDataSource.getSurah(1)).thenAnswer(
          (realInvocation) async => BaseResponse<Surah>.fromJson(
            surahMock,
            (json) => Surah.fromJson(json),
          ),
        );
        // act
        final responseSurah = await remoteDataSource.getSurah(1);
        // assert
        expect(responseSurah.data?.nameId, 'Al-Fatihah');
        verify(remoteDataSource.getSurah(1));
      });
    },
  );

  group(
    'Juz test',
    () {
      test('Should return list juz with length 30', () async {
        // arrange
        when(remoteDataSource.getJuzs()).thenAnswer(
          (realInvocation) async => BaseResponse<List<Juz>>.fromJson(
            juzsMock,
            (json) => (json as List).toResponseList<Juz>(
              (element) => Juz.fromJson(element),
            ),
          ),
        );
        // act
        final responseJuzs = await remoteDataSource.getJuzs();
        // assert
        expect(responseJuzs.data?.length, 30);
        verify(remoteDataSource.getJuzs());
      });

      test('Should return surah with nameStartId Al-Fatihah', () async {
        // arrange
        when(remoteDataSource.getJuz(1)).thenAnswer(
          (realInvocation) async => BaseResponse<Juz>.fromJson(
            juzMock,
            (json) => Juz.fromJson(json),
          ),
        );
        // act
        final responseJuzs = await remoteDataSource.getJuz(1);
        // assert
        expect(responseJuzs.data?.nameStartId, 'Al-Fatihah');
        verify(remoteDataSource.getJuz(1));
      });
    },
  );

  group(
    'Ayah test',
    () {
      test('Should return list Ayah in juz with length 5', () async {
        // arrange
        when(remoteDataSource.getAyahsJuz(1)).thenAnswer(
          (realInvocation) async => BaseResponse<List<Ayah>>.fromJson(
            ayahsJuzMock,
            (json) => (json as List).toResponseList<Ayah>(
              (element) => Ayah.fromJson(element),
            ),
          ),
        );
        // act
        final responseJuzs = await remoteDataSource.getAyahsJuz(1);
        // assert
        expect(responseJuzs.data?.length, 5);
        verify(remoteDataSource.getAyahsJuz(1));
      });

      test('Should return list Ayah pagination with length 4', () async {
        // arrange
        const ayahPagination = AyahPagination(length: 4, page: 1);
        when(remoteDataSource.getAyahs(ayahPagination)).thenAnswer(
          (realInvocation) async => BaseResponse<List<Ayah>>.fromJson(
            ayahPage1Length4Mock,
            (json) => (json as List).toResponseList<Ayah>(
              (element) => Ayah.fromJson(element),
            ),
          ),
        );
        // act
        final responseJuzs = await remoteDataSource.getAyahs(ayahPagination);
        // assert
        expect(responseJuzs.data?.length, 4);
        verify(remoteDataSource.getAyahs(ayahPagination));
      });
    },
  );
}
