part of 'package:app/router/app_router.dart';

/// TypedStatefulShellBranch for feature_settings
const settingsBranch = TypedStatefulShellBranch<SettingsBranch>(
  routes: [
    settingsRoute,
  ],
);

final class SettingsBranch extends StatefulShellBranchData {
  const SettingsBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = settingsNavigatorKey;
}
