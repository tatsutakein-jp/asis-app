import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_news.freezed.dart';

/// サービスのお知らせ
///
/// {@category Model}
@freezed
class NetworkNews with _$NetworkNews {
  const factory NetworkNews({
    required String title,
    required String slug,
    required DateTime publishedAt,
    required String excerpt,
    required String? coverImageUrl,
  }) = _NetworkNews;
}
