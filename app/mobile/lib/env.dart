// ignore_for_file: avoid_classes_with_only_static_members

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(obfuscate: true, requireEnvFile: true, path: '.env')
abstract class Env {
  @EnviedField(varName: 'BACKEND_URL')
  static final String backendUrl = _Env.backendUrl;

  @EnviedField(varName: 'WEBSITE_URL')
  static final String websiteUrl = _Env.websiteUrl;
}
