import 'package:core_model/build_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'build_config.freezed.dart';

part 'build_config.g.dart';

@Riverpod(keepAlive: true)
BuildConfig buildConfig(BuildConfigRef ref) {
  throw UnimplementedError('buildConfig');
}

/// BuildConfig
///
/// {@category Model}
@freezed
class BuildConfig with _$BuildConfig {
  const factory BuildConfig({
    required String appName,
    required String packageName,
    required String version,
    required String buildNumber,
    required String buildSignature,
    required Flavor flavor,
    required String? installerStore,
    required String backendUrl,
  }) = _BuildConfig;
}

/// FakeBuildConfig
const fakeBuildConfig = BuildConfig(
  appName: 'Fake App',
  packageName: 'com.example.fake_app',
  version: '1.0.0',
  buildNumber: '1',
  buildSignature: '1',
  flavor: Flavor.dev,
  installerStore: 'fake_store',
  backendUrl: '',
);
