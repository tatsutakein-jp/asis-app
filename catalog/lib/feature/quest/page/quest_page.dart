import 'package:feature_quest/feature_quest.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'QuestPage',
  type: QuestListPage,
  path: '[Feature]/quest',
)
QuestListPage questPageUseCase(BuildContext context) {
  return QuestListPage(
    onTapQuestListItem: (quest) {},
    onTapQuestAddButton: () {},
  );
}
