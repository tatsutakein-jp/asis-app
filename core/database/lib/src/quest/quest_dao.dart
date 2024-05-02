import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_dao.g.dart';

@Riverpod(keepAlive: true)
QuestDao questDao(QuestDaoRef ref) => throw UnimplementedError('questDao');

abstract interface class QuestDao {
  Future<Quest?> getById({required QuestId id});

  Future<List<Quest>> getAll();

  Future<void> insert({required Quest quest});

  Future<void> inserts({required List<Quest> quests});

  Future<bool> update({required Quest quest});

  Future<int> updates({required List<QuestId> ids});

  Future<bool> delete({required QuestId id});

  Future<int> deletes({required List<QuestId> ids});

  Future<int> deleteAll();
}
