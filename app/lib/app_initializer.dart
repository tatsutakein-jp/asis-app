import 'dart:async';

import 'package:core_database/initializer.dart';

final class AppInitializer {
  AppInitializer._();

  static Future<void> initialize() async {
    await Database.initialize();
  }
}
