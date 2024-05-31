part of 'package:app/router/app_router.dart';

/// TypedStatefulShellBranch for feature_home
const homeBranch = TypedStatefulShellBranch<HomeBranch>(
  routes: [
    homeRoute,
  ],
);

final class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
}
