import 'package:backend/quests/ferry_main_quest_remote_data_source.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
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
