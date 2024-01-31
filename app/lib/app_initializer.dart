import 'dart:async';

import 'package:asis_app/firebase_options/firebase_options_dev.dart' as dev;
import 'package:core_database/initializer.dart';
import 'package:firebase_core/firebase_core.dart';

final class AppInitializer {
  AppInitializer._();

  // ignore: do_not_use_environment
  static const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');

  static Future<void> initialize() async {
    await Database.initialize();

    await Firebase.initializeApp(
      options: switch (flavor) {
        'dev' => dev.DefaultFirebaseOptions.currentPlatform,
        _ => throw UnsupportedError('Unsupported flavor for firebase: $flavor'),
      },
    );
  }
}
