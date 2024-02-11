import 'package:feature_quest/feature_quest.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Light theme',
  type: QuestPage,
  path: '[Pages]',
)
Widget lightThemeUseCase(BuildContext context) {
  return QuestPage();
}
