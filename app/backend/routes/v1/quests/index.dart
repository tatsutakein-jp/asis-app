import 'package:backend/quests/ferry_main_quest_remote_data_source.dart';
import 'package:core_network_model/core_network_model.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final request = context.request;

  return switch (request.method) {
    HttpMethod.get => await _onGetRequest(context),
    HttpMethod.post => await _onPostRequest(context),
    _ => throw Exception('Unsupported method: ${request.method}'),
  };
}

Future<Response> _onGetRequest(RequestContext context) async {
  // Access the incoming request.
  final request = context.request;

  // Access the query parameters as a `Map<String, String>`.
  final params = request.uri.queryParameters;

  // Default to `there` if there is no query parameter.
  final userId = params['userId'] ?? (throw Exception('userId is required'));

  final dataSource = context.read<FerryMainQuestRemoteDataSource>();
  final mainQuestList = await dataSource.getMainQuestList(userId: userId);

  return Response.json(body: mainQuestList);
}

Future<Response> _onPostRequest(RequestContext context) async {
  // Access the incoming request.
  final request = context.request;

  final body = CreateMainQuestRequest.fromJson(
    await request.json() as Map<String, dynamic>,
  );

  final dataSource = context.read<FerryMainQuestRemoteDataSource>();
  final questId = await dataSource.insertMainQuest(
    title: body.title,
    description: body.description,
    note: body.note,
    userId: body.userId,
  );

  return Response.json(body: questId);
}
