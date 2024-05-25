import 'package:asis_app/router/app_page_path.dart';
import 'package:asis_app/router/go_route/home_route.dart';
import 'package:feature_auth/feature_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'auth_route.g.dart';

/// TypedGoRoute for feature_auth
const authRoute = TypedGoRoute<AuthRoute>(path: AppPagePath.auth);

@TypedGoRoute<AuthRoute>(path: AppPagePath.auth)
final class AuthRoute extends GoRouteData {
  const AuthRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => AuthPage(
        onLoginSuccess: () => const HomeRoute().go(context),
      );
}
