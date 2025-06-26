import 'dart:collection';
import 'dart:io';

void main() async {
  final List<File> dartFiles = listDartFiles();
  final UnmodifiableListView<MigrationHandler> unmodifiableListView = UnmodifiableListView([
    MigrationBlocFreezedHandler(),
    // MigrationModelFreezedHandler(),
  ]);
  fileLoop:
  for (final file in dartFiles) {
    for (final handler in unmodifiableListView) {
      if (file.path.contains(handler.shouldContain)) {
        await handler.migrate(file);
        continue fileLoop;
      }
    }
  }
}

sealed class MigrationHandler {
  Future<void> migrate(File file) async {
    shouldChangeNextLine = false;
    await migrationLogic(file);
  }

  bool freezedClassMigration(String line) {
    final isContainsFreezedAnnotation = line.contains('@freezed') || line.contains('@Freezed');
    shouldChangeNextLine = isContainsFreezedAnnotation;
    return isContainsFreezedAnnotation;
  }

  bool shouldChangeNextLine = false;

  Future<void> migrationLogic(File file);

  String get shouldContain;
}

class MigrationBlocFreezedHandler extends MigrationHandler {
  @override
  String get shouldContain => '_bloc.dart';

  @override
  Future<void> migrationLogic(File file) async {
    final lines = file.readAsLinesSync();
    file.writeAsStringSync('');
    String className = '';
    for (final line in lines) {
      if (shouldChangeNextLine && line.contains('sealed')) {
        className = line.split(' ')[2];
        file.writeAsStringSync('$line\n', mode: FileMode.append);
        shouldChangeNextLine = false;
        continue;
      } else if (shouldChangeNextLine && !line.contains('sealed')) {
        className = line.split(' ')[1];
        file.writeAsStringSync('sealed $line\n', mode: FileMode.append);
        shouldChangeNextLine = false;
      } else if (freezedClassMigration(line)) {
        file.writeAsStringSync('$line\n', mode: FileMode.append);
        continue;
      } else if (isOneLineFactoryEvent(line)) {
        appendEventKeyword(line, file, className);
        continue;
      } else if (isOneLineFactoryState(line)) {
        appendStateKeyword(line, file, className);
        continue;
      } else {
        file.writeAsStringSync('$line\n', mode: FileMode.append);
        continue;
      }
    }
  }

  Future<void> appendStateKeyword(String line, File file, String className) async {
    final classNameWithoutEventKeyword = className.replaceAll('State', '');
    final eventName = line.split('_')[1].replaceAll('State', '').replaceAll(';', '');

    final fullFreezedEventName = '$classNameWithoutEventKeyword${eventName}State';

    file.writeAsStringSync(
      '${line.replaceAll('_$eventName', fullFreezedEventName).replaceAll('StateState', 'State').replaceAll(';', '')};\n',
      mode: FileMode.append,
    );
  }

  Future<void> appendEventKeyword(String line, File file, String className) async {
    final classNameWithoutEventKeyword = className.replaceAll('Event', '');
    final eventName = line.split('_')[1].replaceAll('Event', '').replaceAll(';', '');

    final fullFreezedEventName = '$classNameWithoutEventKeyword${eventName}Event';

    file.writeAsStringSync(
      '${line.replaceAll('_$eventName', fullFreezedEventName).replaceAll('EventEvent', 'Event').replaceAll(';', '')};\n',
      mode: FileMode.append,
    );
  }

  bool isOneLineFactoryEvent(String line) {
    return line.contains('const factory') && line.contains('_') && line.contains('Event');
  }

  bool isOneLineFactoryState(String line) {
    return line.contains('const factory') && line.contains('_') && line.contains('State');
  }
}

class MigrationModelFreezedHandler extends MigrationHandler {
  @override
  String get shouldContain => '.dart';

  @override
  Future<void> migrationLogic(File file) async {
    final lines = file.readAsLinesSync();
    file.writeAsStringSync('');
    for (final line in lines) {
      /// Skipping bloc files
      if (line.contains("import 'package:flutter_bloc/flutter_bloc.dart';'")) {
        break;
      }
      if (shouldChangeNextLine && line.contains('abstract') || line.contains('sealed')) {
        file.writeAsStringSync('$line\n', mode: FileMode.append);
        shouldChangeNextLine = false;
        continue;
      } else if (shouldChangeNextLine && !line.contains('abstract')) {
        file.writeAsStringSync('abstract $line\n', mode: FileMode.append);
        shouldChangeNextLine = false;
      } else if (freezedClassMigration(line)) {
        file.writeAsStringSync('$line\n', mode: FileMode.append);
        continue;
      } else {
        file.writeAsStringSync('$line\n', mode: FileMode.append);
        continue;
      }
    }
  }
}

List<File> listDartFiles() {
  final directory = Directory('lib');
  final fileList = directory.listSync(recursive: true);
  final regexOnlyDartFiles = RegExp(r'(?<!\.freezed)(?<!\.g)\.dart$');
  final List<File> dartFiles = [];
  for (final file in fileList) {
    if (regexOnlyDartFiles.hasMatch(file.path)) {
      dartFiles.add(file as File);
    }
  }

  return dartFiles;
}
