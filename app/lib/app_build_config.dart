import 'package:core_model/build_config.dart';

final class AppBuildConfig implements BuildConfig {
  AppBuildConfig({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
    required this.buildSignature,
    this.installerStore,
  });

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
  String? installerStore;
}
