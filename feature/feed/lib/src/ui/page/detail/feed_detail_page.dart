import 'package:core_designsystem/component.dart';
import 'package:core_model/feed.dart';
import 'package:feature_feed/src/ui/page/detail/component/feed_content.dart';
import 'package:flutter/material.dart';

/// お知らせ詳細ページ
final class FeedDetailPage extends StatelessWidget {
  const FeedDetailPage({
    required FeedId feedId,
    super.key,
  }) : _feedId = feedId;

  final FeedId _feedId;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: const AsisAppBar(
        title: Text('Feed detail'),
      ),
      body: FeedContent(
        feedId: _feedId,
      ),
    );
  }
}
