import 'package:core_network/core_network.dart';
import 'package:core_network_ferry/src/graphql/news/__generated__/GetNews.data.gql.dart';

extension FerryNewsX on GGetNewsData_news {
  NetworkNews toNetworkNews() {
    return NetworkNews(
      id: id.value,
      title: title,
      publishedAt: publishedAt!,
      excerpt: excerpt,
      coverImageUrl: coverImageUrl,
      content: content,
    );
  }
}
