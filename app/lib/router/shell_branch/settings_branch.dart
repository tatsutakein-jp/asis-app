part of 'package:app/router/app_router.dart';

/// TypedStatefulShellBranch for feature_settings
const settingsBranch = TypedStatefulShellBranch<SettingsBranch>(
  routes: [
    // セッティングタブ内でのpush先はここのroutesにネストしていく
    TypedGoRoute<SettingsRoute>(
      path: AppPagePath.settings,
      routes: [
        TypedGoRoute<ThemeSettingDialogRoute>(
          path: AppPagePath.theme,
        ),
        TypedGoRoute<LicenseRoute>(
          path: AppPagePath.license,
        ),
      ],
    ),
  ],
);

final class SettingsBranch extends StatefulShellBranchData {
  const SettingsBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = settingsNavigatorKey;
}
