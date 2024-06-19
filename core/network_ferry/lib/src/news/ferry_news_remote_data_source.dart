import 'dart:async';

import 'package:core_network/core_network.dart';
import 'package:core_network_ferry/src/ferry.dart';
import 'package:core_network_ferry/src/graphql/news/__generated__/GetNews.req.gql.dart';
import 'package:core_network_ferry/src/news/ferry_network_news_transformer.dart';
import 'package:ferry/ferry.dart';

final ferryNewsRemoteDataSourceProvider =
    newsRemoteDataSourceProvider.overrideWith(
  (ref) => FerryNewsRemoteDataSource(
    client: ref.watch(ferryClientProvider),
    transformer: ref.watch(ferryNetworkNewsTransformerProvider),
  ),
);

final class FerryNewsRemoteDataSource implements NewsRemoteDataSource {
  FerryNewsRemoteDataSource({
    required Client client,
    required FerryNetworkNewsTransformer transformer,
  })  : _transformer = transformer,
        _client = client;

  final Client _client;
  final FerryNetworkNewsTransformer _transformer;

  @override
  Stream<List<NetworkNews>> newsListStream() {
    final request = GGetNewsReq();
    return _client.request(request).map((res) {
      final data = res.data;
      if (data == null) {
        return [];
      }

      return data.news.map(_transformer.transformToNetworkNews).toList();
    });
  }

  @override
  Future<List<NetworkNews>> getNewsList() async {
    final request = GGetNewsReq();
    final data = (await _client.request(request).first).data;
    if (data == null) {
      return [];
    }

    return data.news.map(_transformer.transformToNetworkNews).toList();
  }
}
