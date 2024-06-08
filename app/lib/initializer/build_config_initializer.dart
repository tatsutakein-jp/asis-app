import 'package:core_model/build_config.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<BuildConfig> initializeBuildConfig() async {
  final packageInfo = await PackageInfo.fromPlatform();

  return BuildConfig(
    flavor: Flavor.values.firstWhere(
      (flavor) => flavor.name == appFlavor,
      orElse: () => Flavor.dev,
    ),
    appName: packageInfo.appName,
    packageName: packageInfo.packageName,
    version: packageInfo.version,
    buildNumber: packageInfo.buildNumber,
    buildSignature: packageInfo.buildSignature,
    installerStore: packageInfo.installerStore,
  );
}
