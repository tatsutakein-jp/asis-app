import 'dart:async';

import 'package:asis_app/app_build_config.dart';
import 'package:core_database/initializer.dart';
import 'package:core_model/build_config.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

final class AppInitializer {
  AppInitializer._();

  static Future<BuildConfig> initialize() async {
    final buildConfig = await _initializeBuildConfig();
    await _initializeDatabase();

    return buildConfig;
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

  static Future<void> _initializeDatabase() async {
    await Database.initialize();
  }
}
