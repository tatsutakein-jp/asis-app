import 'dart:async';

import 'package:app/app_build_config.dart';
import 'package:app/auth/firebase_authenticator.dart';
import 'package:app/datastore/preferences_data_store.dart';
import 'package:app/flavor/flavor.dart';
import 'package:core_common/log.dart';
import 'package:core_database/initializer.dart';
import 'package:core_model/build_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef InitializedValues = ({
  BuildConfig buildConfig,
  Isar isar,
  PreferencesDataStore dataStore,
  FirebaseAuthenticator firebaseAuthenticator,
});

final class AppInitializer {
  AppInitializer._();

  static Future<InitializedValues> initialize() async {
    _initializeLogger();

    final buildConfig = await _initializeBuildConfig();

    final [
      isar as Isar,
      dataStore as PreferencesDataStore,
      firebaseAuthenticator as FirebaseAuthenticator,
    ] = await Future.wait([
      _initializeDatabase(),
      _initializeDataStore(),
      _initializeFirebase(flavor: buildConfig.flavor),
    ]);

    return (
      buildConfig: buildConfig,
      isar: isar,
      dataStore: dataStore,
      firebaseAuthenticator: firebaseAuthenticator,
    );
  }

  static void _initializeLogger() {
    Logger.initialize(includeCallerInfo: kDebugMode);
  }

  static Future<BuildConfig> _initializeBuildConfig() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return AppBuildConfig(
      appFlavor: appFlavor,
      appName: packageInfo.appName,
      packageName: packageInfo.packageName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      buildSignature: packageInfo.buildSignature,
      installerStore: packageInfo.installerStore,
    );
  }

  static Future<Isar> _initializeDatabase() async {
    if (kIsWeb) {
      return Database.openIsarWeb();
    } else {
      final dir = await getApplicationDocumentsDirectory();
      return Database.openIsarNonWeb(directory: dir.path);
    }
  }

  static Future<PreferencesDataStore> _initializeDataStore() async {
    return PreferencesDataStore(
      preferences: await SharedPreferences.getInstance(),
    );
  }

  static Future<FirebaseAuthenticator> _initializeFirebase({
    required Flavor flavor,
  }) async {
    await Firebase.initializeApp(
      options: flavor.firebaseOptions,
    );

    return FirebaseAuthenticator(firebaseAuth: FirebaseAuth.instance);
  }
}
