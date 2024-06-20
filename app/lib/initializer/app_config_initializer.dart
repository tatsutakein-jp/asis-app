import 'package:core_model/app_config.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<AppConfig> initializeAppConfig() async {
  final packageInfo = await PackageInfo.fromPlatform();

  return AppConfig(
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
    // TODO: URL を環境別に設定する
    backendUrl: 'https://asis-stg.hasura.app/v1/graphql',
  );
}
