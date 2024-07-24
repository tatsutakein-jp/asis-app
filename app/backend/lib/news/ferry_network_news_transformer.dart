import 'package:backend/graphql/news/__generated__/GetNews.data.gql.dart';
import 'package:core_network_model/news.dart';

final class FerryNetworkNewsTransformer {
  NetworkNews transformToNetworkNews(GGetNewsData_news from) {
    return NetworkNews(
      title: from.title,
      slug: from.slug,
      // NOTE: アプリ側で受信できるニュースは公開日が必ず存在する
      publishedAt: from.publishedAt!,
      excerpt: from.excerpt,
      coverImageUrl: from.coverImageUrl,
    );
  }
}
