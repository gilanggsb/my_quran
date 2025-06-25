import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String format(String format, {String locale = 'id_ID'}) {
    final dateFormat = DateFormat(format, locale);
    return dateFormat.format(this);
  }
}

extension DateTimeExts on DateTime? {
  String format(String format, {String locale = 'id_ID'}) {
    final dateFormat = DateFormat(format, locale);
    if (this == null) return '';
    return dateFormat.format(this!);
  }
}
