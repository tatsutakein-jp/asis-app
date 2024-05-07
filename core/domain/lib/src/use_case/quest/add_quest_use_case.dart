import 'package:core_data/quest_repository.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_quest_use_case.g.dart';

/// クエストを追加する ユースケース
@riverpod
Future<void> addQuestUseCase(
  AddQuestUseCaseRef ref, {
  required Quest quest,
}) =>
    ref.watch(questRepositoryProvider).insert(quest: quest);
