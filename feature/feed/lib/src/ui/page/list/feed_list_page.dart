import 'package:core_designsystem/component.dart';
import 'package:core_model/feed.dart';
import 'package:feature_feed/src/gen/l10n/l10n.dart';
import 'package:feature_feed/src/ui/page/list/component/feed_list.dart';
import 'package:feature_feed/src/ui/page/list/component/news_feed_card_section.dart';
import 'package:flutter/material.dart';

/// お知らせ一覧ページ
final class FeedListPage extends StatelessWidget {
  const FeedListPage({
    required void Function(Feed) onTapFeedListItem,
    required void Function(NewsFeed) onTapNewsFeedCardItem,
    required void Function() onTapMoreNewsFeed,
    super.key,
  })  : _onTapFeedListItem = onTapFeedListItem,
        _onTapNewsFeedCardItem = onTapNewsFeedCardItem,
        _onTapMoreNewsFeed = onTapMoreNewsFeed;

  final void Function(Feed feed) _onTapFeedListItem;
  final void Function(NewsFeed newsFeed) _onTapNewsFeedCardItem;
  final void Function() _onTapMoreNewsFeed;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return TobeScaffold(
      appBar: TobeAppBar(
        title: Text(l10n.feedListAppBarTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewsFeedCardSection(
              onTapNewsFeedCardItem: _onTapNewsFeedCardItem,
              onTapMoreNewsFeed: _onTapMoreNewsFeed,
            ),
            FeedList(
              onTapFeedListItem: _onTapFeedListItem,
            ),
          ],
        ),
      ),
    );
  }
}
