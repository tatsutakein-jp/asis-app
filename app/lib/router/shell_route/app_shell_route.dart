import 'package:asis_app/router/app_navigation_bar.dart';
import 'package:asis_app/router/app_navigation_key.dart';
// --- branch内のTypedGoRouteはimportする必要がある(partとpart ofが適切かも)
import 'package:asis_app/router/go_route/home_route.dart';
import 'package:asis_app/router/go_route/quest_list_route.dart';
import 'package:asis_app/router/go_route/settings_route.dart';
// ---
import 'package:asis_app/router/shell_branch/home_branch.dart';
import 'package:asis_app/router/shell_branch/quest_branch.dart';
import 'package:asis_app/router/shell_branch/settings_branch.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_shell_route.g.dart';

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    homeBranch,
    questBranch,
    settingsBranch,
  ],
)
final class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return AppNavigationBar(
      navigationShell: navigationShell,
    );
  }
}
