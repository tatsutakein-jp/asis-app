import 'package:feature_settings/feature_settings.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'SettingsPage',
  type: SettingsPage,
  path: '[Feature]/my',
)
SettingsPage settingsPageUseCase(BuildContext context) {
  return SettingsPage(
    onTapThemeSetting: () {},
    onTapOpenSourceLicense: () {},
    onSignOutSuccess: () {},
  );
}
