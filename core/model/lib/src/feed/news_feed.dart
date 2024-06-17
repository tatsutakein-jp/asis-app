import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_feed.freezed.dart';

typedef NewsFeedId = String;

/// サービスのお知らせ
///
/// {@category Model}
@freezed
class NewsFeed with _$NewsFeed {
  const factory NewsFeed({
    required NewsFeedId id,
    required String title,
    required String publishedAt,
    required String excerpt,
    required String coverImageUrl,
    required String content,
  }) = _NewsFeed;
}
