import 'package:backend/news/ferry_news_remote_data_source.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:riverpod/riverpod.dart';

Future<Response> onRequest(RequestContext context) async {
  final container = ProviderContainer();
  final newsRemoteDataSource = container.read(newsRemoteDataSourceProvider);
  final newsList = await newsRemoteDataSource.getNewsList();

  return Response.json(body: {for (final news in newsList) news.title: news});
}
