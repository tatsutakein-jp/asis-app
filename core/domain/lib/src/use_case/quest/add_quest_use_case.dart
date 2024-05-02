import 'package:core_data/quest_repository.dart';
import 'package:core_domain/src/use_case/use_case.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_quest_use_case.g.dart';

@riverpod
AddQuestUseCase addQuestUseCase(AddQuestUseCaseRef ref) => AddQuestUseCase(
      repository: ref.watch(questRepositoryProvider),
    );

typedef AddQuestUseCaseArgs = ({
  Quest quest,
});

/// クエストを追加する ユースケース
final class AddQuestUseCase implements UseCase<AddQuestUseCaseArgs, void> {
  AddQuestUseCase({
    required QuestRepository repository,
  }) : _repository = repository;

  final QuestRepository _repository;

  @override
  void execute(AddQuestUseCaseArgs args) =>
      _repository.insert(quest: args.quest);
}
