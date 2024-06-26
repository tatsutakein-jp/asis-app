import 'package:core_authenticator/authenticator.dart';
import 'package:core_data/repository.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_quest_use_case.g.dart';

/// クエストを追加する ユースケース
@riverpod
Raw<Future<void>> addQuestUseCase(
  AddQuestUseCaseRef ref, {
  required String title,
  required String description,
  required String note,
}) async {
  final currentUserId = ref.watch(authenticatorProvider).currentUserId;
  if (currentUserId == null) {
    // TODO: エラークラスの実装と置き換え
    // throw UnauthenticatedException();
    throw Exception('Unauthenticated');
  }

  await ref.watch(questRepositoryProvider).insert(
        userId: currentUserId,
        title: title,
        description: description,
        begunAt: null,
        endedAt: null,
        categoryId: null,
        status: QuestStatus.backlog,
        coverImageUrl: null,
        note: note,
      );
}
