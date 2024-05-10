import 'package:core_datastore/datastore.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// [SharedPreferences] を利用したデータストア
final class PreferencesDataStore implements DataStore {
  PreferencesDataStore({
    required SharedPreferences preferences,
  }) : _preferences = preferences;

  final SharedPreferences _preferences;

  @override
  String? getString(String key) => _preferences.getString(key);

  @override
  Future<bool> setString(String key, String value) =>
      _preferences.setString(key, value);

  @override
  Future<bool> remove(String key) => _preferences.remove(key);
}
