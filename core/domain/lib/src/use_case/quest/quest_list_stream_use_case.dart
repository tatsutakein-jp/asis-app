import 'package:core_data/quest_repository.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_list_stream_use_case.g.dart';

/// クエスト一覧を取得する ユースケース
@riverpod
Stream<List<Quest>> questListStreamUseCase(QuestListStreamUseCaseRef ref) =>
    ref.watch(questRepositoryProvider).allStream();
