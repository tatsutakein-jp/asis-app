part of 'package:app_mobile/router/app_router.dart';

/// お知らせ一覧ページ
final class FeedListRoute extends GoRouteData {
  const FeedListRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) => FeedListPage(
        onTapFeedListItem: (feed) {
          FeedDetailRoute(feedId: feed.id).go(context);
        },
        onTapNewsFeedCardItem: (newsFeed) async {
          final appConfig = await initializeAppConfig();

          final websiteUrl = ProviderContainer(
            overrides: [
              appConfigProvider.overrideWithValue(appConfig),
            ],
          ).read(appConfigProvider.select((config) => config.websiteUrl));

          final uri = Uri.parse('$websiteUrl/news/${newsFeed.slug}');
          await launchUrl(uri, mode: LaunchMode.inAppWebView);
        },
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
