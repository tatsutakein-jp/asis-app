part of 'package:app/initializer/app_initializer.dart';

Future<PreferencesDataStore> _initializeDataStore() async {
  return PreferencesDataStore(
    preferences: await SharedPreferences.getInstance(),
  );
}
