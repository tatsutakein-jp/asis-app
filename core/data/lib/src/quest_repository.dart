import 'package:core_database/quest_dao.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_repository.g.dart';

@riverpod
QuestRepository questRepository(QuestRepositoryRef ref) => QuestRepository(
      dao: ref.watch(questDaoProvider),
    );

/// クエストのリポジトリ
class QuestRepository {
  QuestRepository({
    required QuestDao dao,
  }) : _dao = dao;

  final QuestDao _dao;

  Future<Quest?> getById({required QuestId id}) async => _dao.getById(id: id);

  Future<List<Quest>> getAll() => _dao.getAll();

  Stream<List<Quest>> allStream() => _dao.allStream();

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
}
