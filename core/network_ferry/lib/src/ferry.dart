import 'package:core_network_ferry/src/news/ferry_news_remote_data_source.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ferry.g.dart';

/// Client instance
@Riverpod(keepAlive: true)
Client ferryClient(FerryClientRef ref) {
  throw UnimplementedError('ferryClient');
}

/// Ferry Client
List<Override> ferryClientProviders({
  required String uri,
}) {
  final client = Client(
    link: HttpLink(uri),
    cache: Cache(),
  );

  return <Override>[
    ferryClientProvider.overrideWithValue(client),
    ferryNewsRemoteDataSourceProvider,
  ];
}
