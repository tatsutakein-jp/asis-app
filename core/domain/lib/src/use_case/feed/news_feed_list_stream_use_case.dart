import 'package:core_model/feed.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_feed_list_stream_use_case.g.dart';

/// サービスのお知らせ一覧を取得する ユースケース
@riverpod
Stream<List<NewsFeed>> newsFeedListStreamUseCase(
  NewsFeedListStreamUseCaseRef ref,
) =>
    Stream.value([
      const NewsFeed(
        id: '1',
        title: 'title',
        publishedAt: '2024-01-01',
        excerpt: 'excerpt',
        coverImageUrl:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjcyiHSN0IqJybWL_ZOPOVzuyP0Svh2WF8QlSGEGzNjyxuS4Ng7vfHLmnCCRJxac6GOR0wWvwYrkytEVPnzFUM0jgcGW842K6pKasOBfS2qdDkvp69fb2yvLrrsOBeKJYo8Ugppa5Hpf-56/s800/news_gohou.png',
        content: 'content',
      ),
      const NewsFeed(
        id: '2',
        title: 'title',
        publishedAt: '2024-01-02',
        excerpt: 'excerpt',
        coverImageUrl:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjcyiHSN0IqJybWL_ZOPOVzuyP0Svh2WF8QlSGEGzNjyxuS4Ng7vfHLmnCCRJxac6GOR0wWvwYrkytEVPnzFUM0jgcGW842K6pKasOBfS2qdDkvp69fb2yvLrrsOBeKJYo8Ugppa5Hpf-56/s800/news_gohou.png',
        content: 'content',
      ),
      const NewsFeed(
        id: '3',
        title: 'title',
        publishedAt: '2024-01-03',
        excerpt: 'excerpt',
        coverImageUrl:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjcyiHSN0IqJybWL_ZOPOVzuyP0Svh2WF8QlSGEGzNjyxuS4Ng7vfHLmnCCRJxac6GOR0wWvwYrkytEVPnzFUM0jgcGW842K6pKasOBfS2qdDkvp69fb2yvLrrsOBeKJYo8Ugppa5Hpf-56/s800/news_gohou.png',
        content: 'content',
      ),
      const NewsFeed(
        id: '4',
        title: 'title',
        publishedAt: '2024-01-04',
        excerpt: 'excerpt',
        coverImageUrl:
            'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjcyiHSN0IqJybWL_ZOPOVzuyP0Svh2WF8QlSGEGzNjyxuS4Ng7vfHLmnCCRJxac6GOR0wWvwYrkytEVPnzFUM0jgcGW842K6pKasOBfS2qdDkvp69fb2yvLrrsOBeKJYo8Ugppa5Hpf-56/s800/news_gohou.png',
        content: 'content',
      ),
    ]);
