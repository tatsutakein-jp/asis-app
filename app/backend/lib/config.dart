import 'dart:io';

final class AppConfig {
  factory AppConfig.fromEnv() => AppConfig._(
        backendUrl: Platform.environment['BACKEND_URL'] ??
            (throw Exception('BACKEND_URL is not set')),
      );

  AppConfig._({
    required this.backendUrl,
  });

  final String backendUrl;
}
