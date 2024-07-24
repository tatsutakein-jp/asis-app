import 'package:backend/graphql/quest/__generated__/GetQuests.data.gql.dart';
import 'package:core_network_model/core_network_model.dart';

final class FerryNetworkMainQuestTransformer {
  NetworkMainQuest transformToNetworkMainQuest(GGetQuestsData_mainQuests from) {
    return NetworkMainQuest(
      id: from.id,
      title: from.title,
      description: from.description,
      begunAt: from.begunAt,
      endedAt: from.endedAt,
      categoryId: from.categoryId,
      status: from.status.name,
      coverImageUrl: from.coverImageUrl,
      note: from.note,
    );
  }
}
