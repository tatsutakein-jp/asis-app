import 'package:asis_app/router/app_navigation_key.dart';
import 'package:asis_app/router/go_route/settings_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// TypedStatefulShellBranch for feature_settings
const settingsBranch =
    TypedStatefulShellBranch<SettingsBranch>(routes: [settingsRoute]);

final class SettingsBranch extends StatefulShellBranchData {
  const SettingsBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = settingsNavigatorKey;
}
