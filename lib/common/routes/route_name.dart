enum RouteName {
  home('Home', 'home'),
  homeJuzTab('Home Juz Tab', 'juz-tab'),
  homeSurahTab('Home Surah Tab', 'surah-tab'),
  quranDetail('Quran Detail', 'quran-detail'),
  bookmark('Bookmark', 'bookmark'),
  root('Root', '/'),
  splash('Splash', '/splash');

  final String name;
  final String pathName;
  const RouteName(this.name, this.pathName);
}
