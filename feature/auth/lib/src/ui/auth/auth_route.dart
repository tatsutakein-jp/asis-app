import 'package:feature_auth/src/ui/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AuthRouteData extends GoRouteData {
  const AuthRouteData();

  abstract final OnTappedButtonCallback onTappedButton;

  @override
  Widget build(BuildContext context, GoRouterState state) => AuthPage(
        onTappedButton: onTappedButton,
      );
}
