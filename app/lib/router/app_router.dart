import 'package:asis_app/router/app_navigation_key.dart';
import 'package:asis_app/router/app_page_path.dart';
import 'package:asis_app/router/go_route/auth_route.dart';
import 'package:asis_app/router/shell_route/app_shell_route.dart';
import 'package:core_authenticator/authenticator.dart';
import 'package:core_model/auth.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final authenticator = ref.watch(authenticatorProvider);

  return GoRouter(
    initialLocation: AppPagePath.home,
    navigatorKey: rootNavigatorKey,
    routes: [
      // 認証はナビゲーター内ではないので並列で設定する
      $authRoute,
      // ナビゲーター
      $appShellRouteData,
    ],
    redirect: (context, state) async {
      // 認証が必要なページではない
      if (!authorizedPaths.any(
        (path) => path == state.matchedLocation,
      )) {
        return null;
      }

      switch (authenticator.authState) {
        case AuthStateUnauthenticated():
          return AppPagePath.auth;
        case AuthStateAuthenticated():
          return null;
      }
    },
  );
}
