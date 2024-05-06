import 'package:asis_app/router/app_navigation_key.dart';
import 'package:asis_app/router/app_page_path.dart';
import 'package:asis_app/router/shell_route/app_shell_route.dart';
import 'package:core_model/quest.dart';
import 'package:feature_quest/feature_quest.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'quest_list_route.g.dart';

/// TypedGoRoute for feature_quest
///
/// クエストタブ内でのpush先はここのroutesにネストしていく
const questListRoute = TypedGoRoute<QuestListRoute>(
  path: AppPagePath.quest,
  routes: [
    TypedGoRoute<QuestDetailRoute>(
      path: AppPagePath.questDetail,
    ),
  ],
);

@TypedGoRoute<QuestListRoute>(path: AppPagePath.quest)
final class QuestListRoute extends QuestListRouteData {
  const QuestListRoute();

  @override
  void Function(BuildContext context, Quest quest) get onTapQuestListItem =>
      (context, quest) {
        print(quest);
        QuestDetailRoute(questId: quest.id).go(context);
      };
}

/// クエスト詳細画面
final class QuestDetailRoute extends QuestDetailRouteData {
  const QuestDetailRoute({
    required this.questId,
  });

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  final QuestId questId;
}
