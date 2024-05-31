part of 'package:app/router/app_router.dart';

/// TypedGoRoute for feature_home
///
/// ホームタブ内でのpush先はここのroutesにネストしていく
const homeRoute = TypedGoRoute<HomeRoute>(
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
);

@TypedGoRoute<HomeRoute>(path: AppPagePath.home)
final class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomePage(
        onTapNotification: () {
          const FeedListRoute().go(context);
        },
      );
}
