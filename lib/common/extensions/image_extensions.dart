extension ImageExtension on String {
  String imageAssetPath(String filename) => "assets/images/$filename";
  String jsonAssetPath(String filename) => "assets/jsons/$filename";
  String get toSvg => "${imageAssetPath(this)}.svg";
  String get toPng => "${imageAssetPath(this)}.png";
  String get toJpg => "${imageAssetPath(this)}.jpg";
  String get toJson => "${jsonAssetPath(this)}.json";
}
