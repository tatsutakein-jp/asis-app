import 'package:feature_settings/feature_settings.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'SettingsPage',
  type: SettingsPage,
  path: '[Pages]',
)
SettingsPage settingsPageUseCase(BuildContext context) {
  return SettingsPage(
    onTapOpenSourceLicense: (context) {},
  );
}
