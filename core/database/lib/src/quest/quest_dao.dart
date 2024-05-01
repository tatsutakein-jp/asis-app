import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_dao.g.dart';

@Riverpod(keepAlive: true)
QuestDao questDao(QuestDaoRef ref) => throw UnimplementedError('questDao');

abstract interface class QuestDao {
  Future<Quest?> getById({required QuestId id});

  Future<List<Quest>> getAll();

  void insert({required Quest quest});

  void inserts({required List<Quest> quests});

  bool update({required Quest quest});

  int updates({required List<QuestId> ids});

  bool delete({required QuestId id});

  int deletes({required List<QuestId> ids});

  int deleteAll();
}
