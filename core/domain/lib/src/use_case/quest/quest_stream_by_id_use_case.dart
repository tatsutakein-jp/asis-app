import 'package:core_data/quest_repository.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_stream_by_id_use_case.g.dart';

/// 該当のクエストを取得する ユースケース
@riverpod
final class QuestStreamByIdUseCase extends _$QuestStreamByIdUseCase {
  @override
  Stream<Quest?> build({required QuestId id}) =>
      ref.watch(questRepositoryProvider).streamById(id: id);
}
