import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_dao.g.dart';

@Riverpod(keepAlive: true)
QuestDao questDao(QuestDaoRef ref) => throw UnimplementedError('questDao');

abstract interface class QuestDao {
  Future<Quest?> getById(QuestId id);

  Future<List<Quest>> getAll();

  void insert(Quest quest);

  void inserts(List<Quest> quests);

  bool update(Quest quest);

  int updates(List<QuestId> ids);

  bool delete(QuestId id);

  int deletes(List<QuestId> ids);

  int deleteAll();
}
