// ignore_for_file: avoid_classes_with_only_static_members

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(obfuscate: true, requireEnvFile: true, path: '.env')
abstract class Env {
  @EnviedField(varName: 'KEY', obfuscate: true)
  static final String key = _Env.key;
}
