import 'package:core_data/quest_repository.dart';
import 'package:core_domain/src/use_case/use_case.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_list_stream_use_case.g.dart';

@riverpod
QuestListStreamUseCase questListStreamUseCase(QuestListStreamUseCaseRef ref) =>
    QuestListStreamUseCase(
      repository: ref.watch(questRepositoryProvider),
    );

/// クエスト一覧を取得する ユースケース
final class QuestListStreamUseCase
    implements UseCase<void, Stream<List<Quest>>> {
  QuestListStreamUseCase({
    required QuestRepository repository,
  }) : _repository = repository;

  final QuestRepository _repository;

  @override
  Stream<List<Quest>> execute(void args) => _repository.allStream();
}
