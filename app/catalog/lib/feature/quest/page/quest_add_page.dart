import 'package:feature_quest/feature_quest.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'QuestAddPage',
  type: QuestAddPage,
  path: '[Feature]/quest',
)
QuestAddPage questAddPageUseCase(BuildContext context) {
  return QuestAddPage(
    onAddQuestCompleted: () {},
  );
}
