import 'package:core_database/src/di/isar.dart';
import 'package:core_database/src/quest/model/quest.dart' as db;
import 'package:core_database/src/quest/quest_dao.dart';
import 'package:core_model/quest.dart';
import 'package:isar/isar.dart';

final isarQuestDaoProvider = questDaoProvider.overrideWith(
  (ref) => IsarQuestDao(
    isar: ref.watch(isarProvider),
  ),
);

final class IsarQuestDao implements QuestDao {
  IsarQuestDao({
    required Isar isar,
  }) : _isar = isar;

  final Isar _isar;

  @override
  Future<Quest?> getById({required QuestId id}) async =>
      (await _isar.quests.getAsync(id))?.asModel();

  @override
  Future<List<Quest>> getAll() async =>
      (await _isar.quests.getAllAsync(List.empty()))
          .nonNulls
          .map((e) => e.asModel())
          .toList();

  @override
  Stream<Quest?> streamById({required QuestId id}) => _isar.quests
      .where()
      .idEqualTo(id)
      .watch(fireImmediately: true)
      .map((event) => event.firstOrNull?.asModel());

  @override
  Stream<List<Quest>> allStream() => _isar.quests
      .where()
      .watch(fireImmediately: true)
      .map((event) => event.map((e) => e.asModel()).toList());

  @override
  Future<void> insert({required Quest quest}) async {
    return _isar.writeAsync(
      (isar) async => isar.quests.put(quest.asDbModel()),
    );
  }

  @override
  Future<void> inserts({required List<Quest> quests}) async => _isar.writeAsync(
        (isar) async => isar.quests.putAll(
          quests.map((e) => e.asDbModel()).toList(),
        ),
      );

  @override
  Future<bool> update({required Quest quest}) async => _isar.writeAsync(
        (isar) => isar.quests.update(
          id: quest.id,
          name: quest.name,
          description: quest.description,
          body: quest.body,
        ),
      );

  @override
  Future<int> updates({required List<QuestId> ids}) async => _isar.writeAsync(
        (isar) => isar.quests.updateAll(id: ids),
      );

  @override
  Future<bool> delete({required QuestId id}) async => _isar.writeAsync(
        (isar) => isar.quests.delete(id),
      );

  @override
  Future<int> deletes({required List<QuestId> ids}) async => _isar.writeAsync(
        (isar) => isar.quests.deleteAll(ids),
      );

  @override
  Future<int> deleteAll() async => _isar.writeAsync(
        (isar) => isar.quests.deleteAll(List.empty()),
      );
}
