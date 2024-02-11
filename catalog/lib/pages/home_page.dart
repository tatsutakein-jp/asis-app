import 'package:feature_home/feature_home.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'HomePage',
  type: HomePage,
  path: '[Pages]',
)
HomePage homePageUseCase(BuildContext context) {
  return HomePage();
}
