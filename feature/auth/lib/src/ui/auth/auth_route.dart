import 'package:feature_auth/src/ui/auth/auth_page.dart';
import 'package:feature_auth/src/ui/auth/auth_route_args.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class AuthRouteData extends GoRouteData {
  const AuthRouteData();

  abstract final OnTappedButtonCallback onTappedButton;

  @nonVirtual
  @override
  Widget build(BuildContext context, GoRouterState state) => ProviderScope(
        overrides: [
          onTappedButtonProvider
              .overrideWith((ref) => () => onTappedButton(context)),
        ],
        child: AuthPage(),
      );
}

typedef OnTappedButtonCallback = void Function(
  BuildContext context,
);
