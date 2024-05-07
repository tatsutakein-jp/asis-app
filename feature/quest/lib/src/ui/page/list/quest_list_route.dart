import 'package:core_model/quest.dart';
import 'package:feature_quest/src/ui/page/list/quest_list_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class QuestListRouteData extends GoRouteData {
  const QuestListRouteData();

  abstract final void Function(
    BuildContext context,
    Quest quest,
  ) onTapQuestListItem;

  @override
  Widget build(BuildContext context, GoRouterState state) => QuestListPage(
        onTapQuestListItem: onTapQuestListItem,
      );
}
