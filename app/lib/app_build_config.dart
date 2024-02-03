import 'package:core_model/build_config.dart';

final class AppBuildConfig implements BuildConfig {
  AppBuildConfig({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
    required this.buildSignature,
    required String? appFlavor,
    this.installerStore,
  }) : flavor = switch (appFlavor) {
          'dev' => Flavor.dev,
          'stg' => Flavor.stg,
          'prod' => Flavor.prod,
          // default flavor
          _ => Flavor.dev,
        };

  @override
  String appName;

  @override
  String packageName;

  @override
  String version;

  @override
  String buildNumber;

  @override
  String buildSignature;

  @override
  Flavor flavor;

  @override
  String? installerStore;
}
