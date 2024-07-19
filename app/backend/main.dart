import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:riverpod/riverpod.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // アプリケーション全体で使用するProviderContainerを作成
  final container = ProviderContainer(
    overrides: [],
  );

  // ミドルウェアを作成してProviderContainerをRequestContextに追加
  Handler middleware(Handler handler) {
    return handler.use(
      provider<ProviderContainer>((context) => container),
    );
  }

  // その他の初期化処理をここに記述
  // 例: データベース接続、ログ設定など

  // ミドルウェアを適用したハンドラでサーバーを起動
  return serve(middleware(handler), ip, port);
}
