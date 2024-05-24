import 'package:core_domain/quest_use_case.dart';
import 'package:core_model/quest.dart';
import 'package:core_ui/quest_list_title.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// クエスト内容
final class QuestContent extends HookConsumerWidget {
  const QuestContent({
    required QuestId questId,
    super.key,
  }) : _questId = questId;

  final QuestId _questId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quest = ref.watch(questStreamByIdUseCaseProvider(id: _questId));

    return quest.when(
      data: (quest) {
        return quest != null
            ? QuestListTile(
                quest: quest,
                onTap: (quest) {},
              )
            : const SizedBox.shrink();
      },
      error: (error, stackTrace) => Center(
        child: Text(
          error.toString(),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
