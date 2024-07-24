import 'dart:io';

import 'package:backend/config.dart';
import 'package:dart_frog/dart_frog.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  Handler middleware(Handler handler) {
    return handler
        .use(
          provider<AppConfig>((context) => AppConfig.fromEnv()),
        )
        .use(
          requestLogger(),
        );
  }

  return serve(middleware(handler), ip, port);
}
