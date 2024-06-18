import 'package:core_network/src/news/model/network_news.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
NewsRemoteDataSource newsRemoteDataSource(NewsRemoteDataSourceRef ref) {
  throw UnimplementedError('newsRemoteDataSource');
}

abstract interface class NewsRemoteDataSource {
  Future<List<NetworkNews>> getNewsList();
}
