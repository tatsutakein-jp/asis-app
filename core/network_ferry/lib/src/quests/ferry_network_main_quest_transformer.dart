import 'package:core_network/quest.dart';
import 'package:core_network_ferry/src/graphql/quest/__generated__/GetQuests.data.gql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ferry_network_main_quest_transformer.g.dart';

@Riverpod(keepAlive: true)
FerryNetworkMainQuestTransformer ferryNetworkMainQuestTransformer(
  FerryNetworkMainQuestTransformerRef ref,
) {
  return FerryNetworkMainQuestTransformer();
}

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
