import 'dart:async';

import 'package:core_model/config.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:isar/isar.dart';
import 'package:mobile_app/auth/firebase_authenticator.dart';
import 'package:mobile_app/datastore/preferences_data_store.dart';
import 'package:mobile_app/initializer/app_config_initializer.dart';
import 'package:mobile_app/initializer/database_initializer.dart';
import 'package:mobile_app/initializer/datastore_initializer.dart';
import 'package:mobile_app/initializer/firebase_initializer.dart';
import 'package:mobile_app/initializer/logger_initializer.dart';

typedef InitializedValues = ({
  AppConfig appConfig,
  Isar isar,
  PreferencesDataStore dataStore,
  FirebaseAnalytics firebaseAnalytics,
  FirebaseAuthenticator firebaseAuthenticator,
  FirebaseRemoteConfig firebaseRemoteConfig,
});

Future<InitializedValues> initializeApp() async {
  initializeLogger();

  final appConfig = await initializeAppConfig();

  final [
    isar as Isar,
    dataStore as PreferencesDataStore,
    firebase as ({
      FirebaseAnalytics firebaseAnalytics,
      FirebaseAuthenticator firebaseAuthenticator,
      FirebaseRemoteConfig firebaseRemoteConfig,
    }),
  ] = await Future.wait([
    initializeDatabase(),
    initializeDataStore(),
    initializeFirebase(flavor: appConfig.flavor),
  ]);

  final (
    :firebaseAnalytics,
    :firebaseAuthenticator,
    :firebaseRemoteConfig,
  ) = firebase;

  return (
    appConfig: appConfig,
    isar: isar,
    dataStore: dataStore,
    firebaseAnalytics: firebaseAnalytics,
    firebaseAuthenticator: firebaseAuthenticator,
    firebaseRemoteConfig: firebaseRemoteConfig,
  );
}
