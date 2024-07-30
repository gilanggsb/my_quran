import 'package:flutter/material.dart';

class QuranDetailMenu {
  final int id;
  final Widget icon;
  final String name;

  QuranDetailMenu({
    required this.id,
    required this.icon,
    required this.name,
  });
}

enum QuranDetailMenuType {
  play(1),
  copy(2),
  bookmark(3),
  lastread(4),
  readAsSurah(5),
  readAsJuz(6),
  tafseer(7),
  jumpToAyah(8);

  final int id;
  const QuranDetailMenuType(this.id);
}

extension QuranDetailMenuExt on QuranDetailMenu {
  QuranDetailMenuType getType() {
    switch (id) {
      case 2:
        return QuranDetailMenuType.copy;
      case 3:
        return QuranDetailMenuType.bookmark;
      case 4:
        return QuranDetailMenuType.lastread;
      case 5:
        return QuranDetailMenuType.readAsSurah;
      case 6:
        return QuranDetailMenuType.readAsJuz;
      case 7:
        return QuranDetailMenuType.tafseer;
      case 8:
        return QuranDetailMenuType.jumpToAyah;
      default:
        return QuranDetailMenuType.play;
    }
  }
}
