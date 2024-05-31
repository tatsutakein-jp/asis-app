part of 'package:app/initializer/app_initializer.dart';

Future<BuildConfig> _initializeBuildConfig() async {
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
