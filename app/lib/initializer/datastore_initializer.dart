import 'package:app/datastore/preferences_data_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<PreferencesDataStore> initializeDataStore() async {
  return PreferencesDataStore(
    preferences: await SharedPreferences.getInstance(),
  );
}
