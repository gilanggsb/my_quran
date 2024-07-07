import '../../features/features.dart';

abstract class BoneMockData {
  static final List<Ayah> fakeAyahs = List.filled(
    5,
    const Ayah(
      ayah: "40",
      arab:
          "اِنَّآ اَنْذَرْنٰكُمْ عَذَابًا قَرِيْبًا ەۙ يَّوْمَ يَنْظُرُ الْمَرْءُ مَا قَدَّمَتْ يَدَاهُ وَيَقُوْلُ الْكٰفِرُ يٰلَيْتَنِيْ كُنْتُ تُرٰبًا ࣖ",
      latin:
          "Innā anżarnākum ‘ażāban qarībā(n), yauma yanẓurul-mar'u mā qaddamat yadāhu wa yaqūlul-kāfiru yā laitanī kuntu turābā(n).",
      text:
          "Sesungguhnya Kami telah memperingatkan kamu akan azab yang dekat pada hari (ketika) manusia melihat apa yang telah diperbuat oleh kedua tangannya dan orang kafir berkata, “Oh, seandainya saja aku menjadi tanah.”",
    ),
  );
  static final List<Surah> fakeSurahs = List.filled(
    10,
    const Surah(
      number: "1",
      nameId: "Al-Ma'idah",
      nameShort: "المائدة",
      revelationId: "Mekkah",
      numberOfVerses: "120",
    ),
  );
  static final List<Juz> fakeJuzs = List.filled(
    10,
    const Juz(
      number: "1",
      name: "Juz 1",
      nameStartId: "Al-Fatihah",
      nameEndId: "Al-Baqarah",
    ),
  );
}
