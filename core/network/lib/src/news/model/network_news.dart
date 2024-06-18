import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_news.freezed.dart';

/// サービスのお知らせ
///
/// {@category Model}
@freezed
class NetworkNews with _$NetworkNews {
  const factory NetworkNews({
    required String id,
    required String title,
    required DateTime publishedAt,
    required String excerpt,
    required String? coverImageUrl,
    required String content,
  }) = _NetworkNews;
}
