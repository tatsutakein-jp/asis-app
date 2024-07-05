part of 'package:app/router/app_router.dart';

/// お知らせ一覧ページ
final class FeedListRoute extends GoRouteData {
  const FeedListRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) => FeedListPage(
        onTapFeedListItem: (feed) {
          FeedDetailRoute(feedId: feed.id).go(context);
        },
        onTapNewsFeedCardItem: (newsFeed) {},
        onTapMoreNewsFeed: () {},
      );
}

/// お知らせ詳細ページ
final class FeedDetailRoute extends GoRouteData {
  const FeedDetailRoute({
    required this.feedId,
  });

  final FeedId feedId;

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FeedDetailPage(
      feedId: feedId,
    );
  }
}
