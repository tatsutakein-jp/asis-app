import 'package:core_authenticator/authenticator.dart';
import 'package:core_model/config.dart';
import 'package:core_model/auth.dart';
import 'package:core_model/feed.dart';
import 'package:core_model/quest.dart';
import 'package:feature_auth/feature_auth.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_home/feature_home.dart';
import 'package:feature_quest/feature_quest.dart';
import 'package:feature_settings/feature_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app/initializer/app_config_initializer.dart';
import 'package:mobile_app/router/app_navigation_bar.dart';
import 'package:mobile_app/router/app_navigation_key.dart';
import 'package:mobile_app/router/app_page_path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'app_router.g.dart';

part 'package:mobile_app/router/routes/app_shell_route.dart';

part 'package:mobile_app/router/routes/auth_route.dart';

part 'package:mobile_app/router/routes/feed_route.dart';

part 'package:mobile_app/router/routes/home_route.dart';

part 'package:mobile_app/router/routes/quest_route.dart';

part 'package:mobile_app/router/routes/settings_route.dart';

part 'package:mobile_app/router/shell_branch/home_branch.dart';

part 'package:mobile_app/router/shell_branch/quest_branch.dart';

part 'package:mobile_app/router/shell_branch/settings_branch.dart';

/// ルートナビゲーターのキー
final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) {
  final authenticator = ref.watch(authenticatorProvider);

  return GoRouter(
    initialLocation: AppPagePath.home,
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
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
