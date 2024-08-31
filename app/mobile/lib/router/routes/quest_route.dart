part of 'package:app_mobile/router/app_router.dart';

/// クエスト一覧画面
final class QuestListRoute extends GoRouteData {
  const QuestListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => QuestListPage(
        onTapQuestListItem: (quest) {
          QuestDetailRoute(questId: quest.id).go(context);
        },
        onTapQuestAddButton: () => const QuestAddRoute().go(context),
      );
}

/// クエスト詳細画面
final class QuestDetailRoute extends GoRouteData {
  const QuestDetailRoute({
    required this.questId,
  });

  final QuestId questId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuestDetailPage(
      questId: questId,
    );
  }
}

/// クエスト追加画面
final class QuestAddRoute extends GoRouteData {
  const QuestAddRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QuestAddPage(
      onAddQuestCompleted: () => context.pop(),
    );
  }
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
