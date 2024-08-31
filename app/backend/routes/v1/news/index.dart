import 'package:app_backend/news/ferry_news_remote_data_source.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final dataSource = context.read<FerryNewsRemoteDataSource>();
  final newsList = await dataSource.getNewsList();

  return Response.json(body: newsList);
}
