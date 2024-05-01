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

  Future<List<Quest>> getAll() async => _dao.getAll();

  void insert({required Quest quest}) => _dao.insert(quest: quest);

  void inserts({required List<Quest> quests}) => _dao.inserts(quests: quests);

  bool update({required Quest quest}) => _dao.update(quest: quest);

  int updates({required List<QuestId> ids}) => _dao.updates(ids: ids);

  bool delete({required QuestId id}) => _dao.delete(id: id);

  int deletes({required List<QuestId> ids}) => _dao.deletes(ids: ids);

  int deleteAll() => _dao.deleteAll();
}
