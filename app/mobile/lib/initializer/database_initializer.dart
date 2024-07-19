import 'package:core_database_isar/initializer.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

Future<Isar> initializeDatabase() async {
  if (kIsWeb) {
    return IsarDatabase.openIsarWeb();
  } else {
    final dir = await getApplicationDocumentsDirectory();
    return IsarDatabase.openIsarNonWeb(directory: dir.path);
  }
}
