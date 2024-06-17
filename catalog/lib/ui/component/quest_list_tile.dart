import 'package:core_model/quest.dart';
import 'package:core_ui/quest_list_title.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'QuestListTile',
  type: QuestListTile,
  path: '[UI]/components',
)
Widget asisScaffoldUseCase(BuildContext context) {
  return QuestListTile(
    quest: const Quest(
      id: '1',
      name: 'Quest 1',
      description: 'Quest 1 description',
      body: 'Quest 1 body',
    ),
    onTap: (quest) {},
  );
}