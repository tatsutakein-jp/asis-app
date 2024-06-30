import 'dart:async';

import 'package:core_model/quest.dart';
import 'package:core_network/core_network.dart';
import 'package:core_network_ferry/src/ferry.dart';
import 'package:core_network_ferry/src/graphql/quest/__generated__/GetQuests.req.gql.dart';
import 'package:core_network_ferry/src/graphql/quest/__generated__/InsertMainQuest.req.gql.dart';
import 'package:core_network_ferry/src/quests/ferry_network_main_quest_transformer.dart';
import 'package:ferry/ferry.dart';

final ferryMainQuestRemoteDataSourceProvider =
    mainQuestRemoteDataSourceProvider.overrideWith(
  (ref) => FerryMainQuestRemoteDataSource(
    client: ref.watch(ferryClientProvider),
    transformer: ref.watch(ferryNetworkMainQuestTransformerProvider),
  ),
);

final class FerryMainQuestRemoteDataSource
    implements MainQuestRemoteDataSource {
  FerryMainQuestRemoteDataSource({
    required Client client,
    required FerryNetworkMainQuestTransformer transformer,
  })  : _transformer = transformer,
        _client = client;

  final Client _client;
  final FerryNetworkMainQuestTransformer _transformer;

  @override
  Stream<List<NetworkMainQuest>> mainQuestListStream() {
    final request = GGetQuestsReq();
    return _client.request(request).map((res) {
      final data = res.data;
      if (data == null) {
        return [];
      }

      return data.mainQuests
          .map(_transformer.transformToNetworkMainQuest)
          .toList();
    });
  }

  @override
  Future<List<NetworkMainQuest>> getMainQuestList() async {
    final request = GGetQuestsReq();
    final data = (await _client.request(request).first).data;
    if (data == null) {
      return [];
    }

    return data.mainQuests
        .map(_transformer.transformToNetworkMainQuest)
        .toList();
  }

  @override
  Future<QuestId> insertMainQuest({
    required String title,
    required String description,
    required String note,
    required String userId,
  }) async {
    final request = GInsertMainQuestReq(
      (b) => b
        ..vars.userId = userId
        ..vars.title = title
        ..vars.description = description
        ..vars.note = note,
    );

    final data = (await _client.request(request).first).data;
    if (data == null) {
      return '';
    }

    return data.insertMainQuestsOne?.id ?? '';
  }
}
