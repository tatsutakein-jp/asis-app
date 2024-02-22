import 'package:asis_app/router/app_navigation_key.dart';
import 'package:asis_app/router/go_route/home_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// TypedStatefulShellBranch for feature_home
const homeBranch = TypedStatefulShellBranch<HomeBranch>(routes: [homeRoute]);

final class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
}
