import 'package:core_designsystem/component.dart';
import 'package:core_model/feed.dart';
import 'package:feature_feed/src/ui/page/list/component/feed_list.dart';
import 'package:flutter/material.dart';

/// お知らせ一覧ページ
final class FeedListPage extends StatelessWidget {
  const FeedListPage({
    required void Function(Feed) onTapFeedListItem,
    super.key,
  }) : _onTapFeedListItem = onTapFeedListItem;

  final void Function(Feed feed) _onTapFeedListItem;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: const AsisAppBar(
        title: Text('Feed'),
      ),
      body: FeedList(
        onTapFeedListItem: _onTapFeedListItem,
      ),
    );
  }
}
