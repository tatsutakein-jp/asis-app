import 'package:asis_app/router/app_navigation_key.dart';
import 'package:asis_app/router/app_page_path.dart';
import 'package:asis_app/router/go_route/auth_route.dart';
import 'package:asis_app/router/shell_route/app_shell_route.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter router(RouterRef ref) => GoRouter(
      initialLocation: AppPagePath.auth,
      navigatorKey: rootNavigatorKey,
      routes: [
        // 認証はナビゲーター内ではないので並列で設定する
        $authRoute,
        // ナビゲーター
        $appShellRouteData,
      ],
    );
