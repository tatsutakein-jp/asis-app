import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_store.g.dart';

/// DataStore instance
@Riverpod(keepAlive: true)
external DataStore dataStore(DataStoreRef ref);

abstract interface class DataStore {
  String? getString(String key);

  Future<bool> setString(String key, String value);

  Future<bool> remove(String key);
}
