part of 'package:app/router/app_router.dart';

/// ホームページへのルート
final class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomePage(
        onTapNotification: () {
          const FeedListRoute().go(context);
        },
      );
}
