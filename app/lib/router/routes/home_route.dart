part of 'package:app/router/app_router.dart';

/// ホームページへのルート
final class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomePage(
        onTapNotification: () {
          const FeedListRoute().go(context);
        },
        onTapQuestListItem: (quest) {
          QuestDetailRoute(questId: quest.id).go(context);
        },
        onMoreButtonPressed: () {
          const QuestListRoute().go(context);
        },
      );
}
