part of 'package:asis_app/router/app_router.dart';

/// TypedStatefulShellBranch for feature_quest
const questBranch = TypedStatefulShellBranch<QuestBranch>(
  routes: [
    questListRoute,
  ],
);

final class QuestBranch extends StatefulShellBranchData {
  const QuestBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = questNavigatorKey;
}
