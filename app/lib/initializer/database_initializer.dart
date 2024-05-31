part of 'package:app/initializer/app_initializer.dart';

Future<Isar> _initializeDatabase() async {
  if (kIsWeb) {
    return Database.openIsarWeb();
  } else {
    final dir = await getApplicationDocumentsDirectory();
    return Database.openIsarNonWeb(directory: dir.path);
  }
}
