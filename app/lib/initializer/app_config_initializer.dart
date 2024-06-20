import 'package:core_model/app_config.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<AppConfig> initializeAppConfig() async {
  final flavor = Flavor.values.firstWhere(
    (flavor) => flavor.name == appFlavor,
    orElse: () => Flavor.dev,
  );

  final packageInfo = await PackageInfo.fromPlatform();

  return AppConfig(
    flavor: flavor,
    appName: packageInfo.appName,
    packageName: packageInfo.packageName,
    version: packageInfo.version,
    buildNumber: packageInfo.buildNumber,
    buildSignature: packageInfo.buildSignature,
    installerStore: packageInfo.installerStore,
    backendUrl: flavor.backendUrl,
  );
}

extension on Flavor {
  String get backendUrl => switch (this) {
        Flavor.dev => 'https://asis-dev.hasura.app/v1/graphql',
        Flavor.stg => 'https://asis-stg.hasura.app/v1/graphql',
        Flavor.prod => 'https://asis.hasura.app/v1/graphql',
      };
}
