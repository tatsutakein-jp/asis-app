import 'package:core_network/core_network.dart';
import 'package:core_network_ferry/src/ferry.dart';
import 'package:core_network_ferry/src/graphql/news/__generated__/GetNews.req.gql.dart';
import 'package:core_network_ferry/src/news/model/network_news.dart';
import 'package:ferry/ferry.dart';

final ferryNewsRemoteDataSourceProvider =
    newsRemoteDataSourceProvider.overrideWith(
  (ref) => FerryNewsRemoteDataSource(
    client: ref.watch(ferryClientProvider),
  ),
);

final class FerryNewsRemoteDataSource implements NewsRemoteDataSource {
  FerryNewsRemoteDataSource({
    required Client client,
  }) : _client = client;

  final Client _client;

  @override
  Future<List<NetworkNews>> getNewsList() async {
    final data = (await _client.request(GGetNewsReq()).first).data;
    if (data == null) {
      return [];
    }

    return data.news.map((e) => e.toNetworkNews()).toList();
  }
}
