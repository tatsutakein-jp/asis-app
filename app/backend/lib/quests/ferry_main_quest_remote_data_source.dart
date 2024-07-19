import 'dart:async';

import 'package:backend/ferry.dart';
import 'package:backend/graphql/quest/__generated__/GetQuests.req.gql.dart';
import 'package:backend/graphql/quest/__generated__/InsertMainQuest.req.gql.dart';
import 'package:backend/quests/ferry_network_main_quest_transformer.dart';
import 'package:core_network_model/core_network_model.dart';
import 'package:ferry/ferry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ferry_main_quest_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
FerryMainQuestRemoteDataSource mainQuestRemoteDataSource(
  MainQuestRemoteDataSourceRef ref,
) {
  return FerryMainQuestRemoteDataSource(
    client: ref.watch(ferryClientProvider),
    transformer: ref.watch(ferryNetworkMainQuestTransformerProvider),
  );
}

final class FerryMainQuestRemoteDataSource {
  FerryMainQuestRemoteDataSource({
    required Client client,
    required FerryNetworkMainQuestTransformer transformer,
  })  : _transformer = transformer,
        _client = client;

  final Client _client;
  final FerryNetworkMainQuestTransformer _transformer;

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

  Future<String> insertMainQuest({
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
