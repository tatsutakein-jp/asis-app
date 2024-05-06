import 'package:asis_app/router/app_page_path.dart';
import 'package:feature_quest/feature_quest.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'quest_list_route.g.dart';

/// TypedGoRoute for feature_quest
///
/// クエストタブ内でのpush先はここのroutesにネストしていく
const questListRoute = TypedGoRoute<QuestListRoute>(path: AppPagePath.quest);

@TypedGoRoute<QuestListRoute>(path: AppPagePath.quest)
final class QuestListRoute extends QuestListRouteData {
  const QuestListRoute();
}
