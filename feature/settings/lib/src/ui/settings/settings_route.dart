import 'package:feature_settings/src/ui/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class SettingsRouteData extends GoRouteData {
  const SettingsRouteData();

  abstract final OnTapOpenSourceLicenseCallback _onTapOpenSourceLicense;

  @override
  Widget build(BuildContext context, GoRouterState state) => SettingsPage(
        onTapOpenSourceLicense: _onTapOpenSourceLicense,
      );
}
