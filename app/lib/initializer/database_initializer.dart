part of 'package:app/initializer/app_initializer.dart';

Future<Isar> _initializeDatabase() async {
  if (kIsWeb) {
    return IsarDatabase.openIsarWeb();
  } else {
    final dir = await getApplicationDocumentsDirectory();
    return IsarDatabase.openIsarNonWeb(directory: dir.path);
  }
}
