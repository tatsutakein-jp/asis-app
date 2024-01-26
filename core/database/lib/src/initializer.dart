import 'dart:async';

import 'package:isar/isar.dart';

final class Database {
  Database._();

  static FutureOr<void> initialize([String? library]) async =>
      await Isar.initialize();
}
