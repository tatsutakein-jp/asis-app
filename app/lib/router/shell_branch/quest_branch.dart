import 'package:asis_app/router/app_navigation_key.dart';
import 'package:asis_app/router/go_route/quest_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// TypedStatefulShellBranch for feature_quest
const questBranch = TypedStatefulShellBranch<QuestBranch>(routes: [questRoute]);

final class QuestBranch extends StatefulShellBranchData {
  const QuestBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = questNavigatorKey;
}
