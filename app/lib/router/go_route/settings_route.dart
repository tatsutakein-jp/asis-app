import 'package:asis_app/router/app_navigation_key.dart';
import 'package:asis_app/router/app_page_path.dart';
import 'package:asis_app/router/shell_route/app_shell_route.dart';
import 'package:feature_settings/feature_settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'settings_route.g.dart';

/// TypedGoRoute for feature_settings
///
/// セッティングタブ内でのpush先はここのroutesにネストしていく
const settingsRoute = TypedGoRoute<SettingsRoute>(
  path: AppPagePath.settings,
  routes: [
    TypedGoRoute<LicenseRoute>(
      path: AppPagePath.license,
    ),
  ],
);

@TypedGoRoute<SettingsRoute>(path: AppPagePath.settings)
final class SettingsRoute extends SettingsRouteData {
  const SettingsRoute();

  @override
  OnTapOpenSourceLicenseCallback get onTapOpenSourceLicense => (context) {
        const LicenseRoute().go(context);
      };
}

/// ライセンスページへのルート
final class LicenseRoute extends LicenseRouteData {
  const LicenseRoute();

  static final $parentNavigatorKey = rootNavigatorKey;
}
