import 'dart:async';

import 'package:app/auth/firebase_authenticator.dart';
import 'package:app/datastore/preferences_data_store.dart';
import 'package:app/initializer/firebase_initializer.dart';
import 'package:core_common/log.dart';
import 'package:core_database_isar/initializer.dart';
import 'package:core_model/build_config.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'package:app/initializer/build_config_initializer.dart';

part 'package:app/initializer/database_initializer.dart';

part 'package:app/initializer/datastore_initializer.dart';

part 'package:app/initializer/logger_initializer.dart';

typedef InitializedValues = ({
  BuildConfig buildConfig,
  Isar isar,
  PreferencesDataStore dataStore,
  FirebaseAnalytics firebaseAnalytics,
  FirebaseAuthenticator firebaseAuthenticator,
});

Future<InitializedValues> initializeApp() async {
  _initializeLogger();

  final buildConfig = await _initializeBuildConfig();

  final [
    isar as Isar,
    dataStore as PreferencesDataStore,
    firebase as ({
      FirebaseAnalytics firebaseAnalytics,
      FirebaseAuthenticator firebaseAuthenticator,
    }),
  ] = await Future.wait([
    _initializeDatabase(),
    _initializeDataStore(),
    initializeFirebase(flavor: buildConfig.flavor),
  ]);

  final (
    :firebaseAnalytics,
    :firebaseAuthenticator,
  ) = firebase;

  return (
    buildConfig: buildConfig,
    isar: isar,
    dataStore: dataStore,
    firebaseAnalytics: firebaseAnalytics,
    firebaseAuthenticator: firebaseAuthenticator,
  );
}
