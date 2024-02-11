import 'package:feature_home/feature_home.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Light theme',
  type: HomePage,
  path: '[Pages]',
)
Widget lightThemeUseCase(BuildContext context) {
  return HomePage();
}
