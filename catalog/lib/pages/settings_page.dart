import 'package:feature_settings/feature_settings.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Light theme',
  type: SettingsPage,
  path: '[Pages]',
)
Widget lightThemeUseCase(BuildContext context) {
  return SettingsPage();
}
