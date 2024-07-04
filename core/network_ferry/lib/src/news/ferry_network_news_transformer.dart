import 'package:core_network/core_network.dart';
import 'package:core_network_ferry/src/graphql/news/__generated__/GetNews.data.gql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ferry_network_news_transformer.g.dart';

@Riverpod(keepAlive: true)
FerryNetworkNewsTransformer ferryNetworkNewsTransformer(
  FerryNetworkNewsTransformerRef ref,
) {
  return FerryNetworkNewsTransformer();
}

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
