import 'dart:async';

import 'package:asis_app/app_build_config.dart';
import 'package:asis_app/datastore/preferences_data_store.dart';
import 'package:asis_app/dev/firebase_options.dart' as dev;
import 'package:core_common/log.dart';
import 'package:core_database/initializer.dart';
import 'package:core_model/build_config.dart';
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
});

final class AppInitializer {
  AppInitializer._();

  static Future<InitializedValues> initialize() async {
    _initializeLogger();

    final [
      buildConfig as BuildConfig,
      isar as Isar,
      dataStore as PreferencesDataStore,
    ] = await Future.wait([
      _initializeBuildConfig(),
      _initializeDatabase(),
      _initializeDataStore(),
    ]);

    await _initializeFirebase(flavor: buildConfig.flavor);

    return (
      buildConfig: buildConfig,
      isar: isar,
      dataStore: dataStore,
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

  static Future<void> _initializeFirebase({
    required Flavor flavor,
  }) async {
    await Firebase.initializeApp(
      /// MEMO(@chippy-ao): 後々、環境によってFirebaseOptionsを切り替える
      options: switch (flavor) {
        Flavor.dev => dev.AppFirebaseOptions.currentPlatform,
        Flavor.stg => dev.AppFirebaseOptions.currentPlatform,
        Flavor.prod => dev.AppFirebaseOptions.currentPlatform,
      },
    );
  }
}
