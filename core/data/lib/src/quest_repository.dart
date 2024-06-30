import 'package:core_database/quest_dao.dart';
import 'package:core_model/quest.dart';
import 'package:core_network/core_network.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_repository.g.dart';

@riverpod
QuestRepository questRepository(QuestRepositoryRef ref) => QuestRepository(
      dao: ref.watch(questDaoProvider),
      remote: ref.watch(mainQuestRemoteDataSourceProvider),
    );

/// クエストのリポジトリ
class QuestRepository {
  QuestRepository({
    required QuestDao dao,
    required MainQuestRemoteDataSource remote,
  })  : _dao = dao,
        _remote = remote;

  final QuestDao _dao;
  final MainQuestRemoteDataSource _remote;

  Future<Quest?> getById({required QuestId id}) async => _dao.getById(id: id);

  Future<List<Quest>> getAll() => _dao.getAll();

  Stream<Quest?> streamById({required QuestId id}) => _dao.streamById(id: id);

  Stream<List<Quest>> stream({
    int? offset,
    int? limit,
  }) =>
      _dao.stream();

  Future<void> insert({required Quest quest}) async =>
      _dao.insert(quest: quest);

  Future<void> inserts({required List<Quest> quests}) async =>
      _dao.inserts(quests: quests);

  Future<bool> update({required Quest quest}) async =>
      _dao.update(quest: quest);

  Future<int> updates({required List<QuestId> ids}) async =>
      _dao.updates(ids: ids);

  Future<bool> delete({required QuestId id}) async => _dao.delete(id: id);

  Future<int> deletes({required List<QuestId> ids}) async =>
      _dao.deletes(ids: ids);

  Future<int> deleteAll() async => _dao.deleteAll();

  Future<void> sync() async {
    final networkQuestList = await _remote.getMainQuestList();
    await _dao.merges(
      networkQuestList.map((quest) {
        return (
          id: quest.id,
          title: quest.title,
          description: quest.description,
        );
      }).toList(),
    );
  }
}
