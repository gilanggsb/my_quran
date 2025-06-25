import '../common.dart';

abstract class AppAssets {
  const AppAssets();

  static String get icDownload => 'ic_download'.toPng;
  static String get icSpeaker => 'ic_speaker'.toPng;
  static String get icQuran => 'ic_quran'.toPng;
  static String get icJumpTo => 'ic_jumpto'.toPng;
  static String get icRectangleQuranNumber => 'ic_rectangle_quran_number'.toPng;
  static String get quranBanner => 'quran_banner'.toPng;
  static String get titleHeaderOrnament => 'title_header_ornament'.toPng;
  static String get headerOrnament => 'header_ornament'.toPng;
  static String get musicDiscAnim => 'music_disc_anim'.toJson;
}
