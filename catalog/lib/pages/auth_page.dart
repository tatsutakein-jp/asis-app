import 'package:feature_auth/feature_auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Light theme',
  type: AuthPage,
  path: '[Pages]',
)
Widget lightThemeUseCase(BuildContext context) {
  return AuthPage();
}
