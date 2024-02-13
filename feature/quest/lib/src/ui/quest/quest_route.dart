import 'package:feature_quest/src/ui/quest/quest_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class QuestRouteData extends GoRouteData {
  const QuestRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => QuestPage();
}
