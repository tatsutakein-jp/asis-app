import 'package:core_model/build_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'build_config.g.dart';

@Riverpod(keepAlive: true)
BuildConfig buildConfig(BuildConfigRef ref) {
  throw UnimplementedError('buildConfig');
}

abstract interface class BuildConfig {
  abstract final String appName;
  abstract final String packageName;
  abstract final String version;
  abstract final String buildNumber;
  abstract final String buildSignature;
  abstract final Flavor flavor;
  abstract final String? installerStore;
}

final class FakeBuildConfig implements BuildConfig {
  @override
  final String appName = 'Fake App';
  @override
  final String packageName = 'com.example.fake_app';
  @override
  final String version = '1.0.0';
  @override
  final String buildNumber = '1';
  @override
  final String buildSignature = '1';
  @override
  final Flavor flavor = Flavor.dev;
  @override
  final String? installerStore = 'fake_store';
}
