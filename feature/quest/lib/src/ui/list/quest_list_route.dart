import 'package:feature_quest/src/ui/list/quest_list_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class QuestListRouteData extends GoRouteData {
  const QuestListRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => QuestListPage();
}
