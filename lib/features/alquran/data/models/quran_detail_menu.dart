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
  play,
  copy,
  bookmark,
  lastread,
}

extension QuranDetailMenuExt on QuranDetailMenu {
  QuranDetailMenuType getType() {
    switch (id) {
      case 1:
        return QuranDetailMenuType.play;
      case 2:
        return QuranDetailMenuType.copy;
      case 3:
        return QuranDetailMenuType.bookmark;
      case 4:
      default:
        return QuranDetailMenuType.play;
    }
  }
}
