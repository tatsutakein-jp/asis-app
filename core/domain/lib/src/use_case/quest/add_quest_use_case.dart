import 'package:core_data/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_quest_use_case.g.dart';

/// クエストを追加する ユースケース
@riverpod
Raw<Future<void>> addQuestUseCase(
  AddQuestUseCaseRef ref, {
  required String title,
  required String description,
  required String note,
}) async =>
    ref.watch(questRepositoryProvider).insert(
          title: title,
          description: description,
          note: note,
        );
