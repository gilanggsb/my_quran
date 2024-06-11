enum RouteName {
  home('Home', '/home'),
  homeJuzTab('Home Juz Tab', '/home/juz-tab'),
  homeSurahTab('Home Surah Tab', '/home/surah-tab'),
  splash('Splash', '/');

  final String name;
  final String pathName;
  const RouteName(this.name, this.pathName);
}
