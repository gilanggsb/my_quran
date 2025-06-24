import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import 'common/common.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  runZonedGuarded<Future<void>>(
    () async {
      Env.load();
      WidgetsFlutterBinding.ensureInitialized();
      Bloc.observer = MyBlocObserver();

      await [
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]),
        InjectorService.create(),
      ].wait;
      await Hive.initFlutter();

      runApp(await builder());
    },
    (error, stack) => Logger.logError(
      'RunzonedGuarded Error :$error \nStackTrace : $stack ',
    ),
  );
}
