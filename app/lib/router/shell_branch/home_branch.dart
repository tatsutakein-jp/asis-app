part of 'package:app/router/app_router.dart';

/// TypedStatefulShellBranch for feature_home
const homeBranch = TypedStatefulShellBranch<HomeBranch>(
  routes: [
    // ホームタブ内でのpush先はここのroutesにネストしていく
    TypedGoRoute<HomeRoute>(
      path: AppPagePath.home,
      routes: [
        TypedGoRoute<FeedListRoute>(
          path: 'feeds',
          routes: [
            TypedGoRoute<FeedDetailRoute>(
              path: ':feedId',
            ),
          ],
        ),
      ],
    ),
  ],
);

final class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
}
