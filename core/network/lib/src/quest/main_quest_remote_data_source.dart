import 'package:core_model/quest.dart';
import 'package:core_network/src/quest/model/network_main_quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_quest_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
MainQuestRemoteDataSource mainQuestRemoteDataSource(
  MainQuestRemoteDataSourceRef ref,
) {
  throw UnimplementedError('mainQuestRemoteDataSource');
}

abstract interface class MainQuestRemoteDataSource {
  Stream<List<NetworkMainQuest>> mainQuestListStream();

  Future<List<NetworkMainQuest>> getMainQuestList();

  Future<QuestId> insertMainQuest({
    required String title,
    required String description,
    required String note,
  });
}
