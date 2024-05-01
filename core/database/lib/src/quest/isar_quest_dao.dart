import 'package:core_database/src/di/isar.dart';
import 'package:core_database/src/quest/model/quest.dart' as db;
import 'package:core_database/src/quest/quest_dao.dart';
import 'package:core_model/quest.dart';
import 'package:isar/isar.dart';

final isarQuestDaoProvider = questDaoProvider.overrideWith(
  (ref) => IsarQuestDao(
    db: ref.watch(isarProvider).quests,
  ),
);

final class IsarQuestDao implements QuestDao {
  IsarQuestDao({
    required IsarCollection<String, db.Quest> db,
  }) : _db = db;

  final IsarCollection<String, db.Quest> _db;

  @override
  Future<Quest?> getById(QuestId id) async =>
      (await _db.getAsync(id))?.asModel();

  @override
  Future<List<Quest>> getAll() async {
    return (await _db.getAllAsync(List.empty()))
        .map((e) => e?.asModel())
        .nonNulls
        .toList();
  }

  @override
  void insert(Quest quest) => _db.put(quest.asDbModel());

  @override
  void inserts(List<Quest> quests) =>
      _db.putAll(quests.map((e) => e.asDbModel()).toList());

  @override
  bool update(Quest quest) => _db.update(
        id: quest.id,
        name: quest.name,
        description: quest.description,
        body: quest.body,
      );

  @override
  int updates(List<QuestId> ids) => _db.updateAll(id: ids);

  @override
  bool delete(QuestId id) => _db.delete(id);

  @override
  int deletes(List<QuestId> ids) => _db.deleteAll(ids);

  @override
  int deleteAll() => _db.deleteAll(List.empty());
}
