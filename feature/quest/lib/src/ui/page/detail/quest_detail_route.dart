import 'package:core_model/quest.dart';
import 'package:feature_quest/src/ui/page/detail/quest_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class QuestDetailRouteData extends GoRouteData {
  const QuestDetailRouteData();

  abstract final QuestId questId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    print(questId);
    return QuestDetailPage(
      questId: questId,
    );
  }
}
