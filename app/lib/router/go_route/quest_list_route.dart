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
    TypedGoRoute<QuestAddRoute>(
      path: AppPagePath.questAdd,
    ),
    TypedGoRoute<QuestDetailRoute>(
      path: AppPagePath.questDetail,
    ),
  ],
);

@TypedGoRoute<QuestListRoute>(path: AppPagePath.quest)
final class QuestListRoute extends GoRouteData {
  const QuestListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => QuestListPage(
        onTapQuestListItem: (quest) {
          print(quest);
          QuestDetailRoute(questId: quest.id).go(context);
        },
        onTapQuestAddButton: () => QuestAddRoute().go(context),
      );
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

/// クエスト追加画面
final class QuestAddRoute extends GoRouteData {
  const QuestAddRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  BottomSheetPage<void> buildPage(BuildContext context, GoRouterState state) =>
      BottomSheetPage<void>(
        builder: (context) => QuestAddPage(
          onAddQuestCompleted: () => context.pop(),
        ),
      );
}

final class BottomSheetPage<T> extends Page<T> {
  const BottomSheetPage({
    required this.builder,
    this.anchorPoint,
    this.barrierLabel,
    this.themes,
  });

  final WidgetBuilder builder;
  final Offset? anchorPoint;
  final String? barrierLabel;
  final CapturedThemes? themes;

  @override
  Route<T> createRoute(BuildContext context) {
    return ModalBottomSheetRoute(
      settings: this,
      builder: builder,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
    );
  }
}
