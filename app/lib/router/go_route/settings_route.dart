import 'package:asis_app/router/app_page_path.dart';
import 'package:feature_settings/feature_settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'settings_route.g.dart';

/// TypedGoRoute for feature_settings
///
/// セッティングタブ内でのpush先はここのroutesにネストしていく
const settingsRoute = TypedGoRoute<SettingsRoute>(path: AppPagePath.settings);

@TypedGoRoute<SettingsRoute>(path: AppPagePath.settings)
final class SettingsRoute extends SettingsRouteData {
  const SettingsRoute();

  @override
  OnTapOpenSourceLicenseCallback get onTapOpenSourceLicense => (context) {};
}
