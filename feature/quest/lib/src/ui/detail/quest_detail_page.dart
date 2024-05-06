import 'package:core_designsystem/component.dart';
import 'package:core_model/quest.dart';
import 'package:core_ui/quest_list_title.dart';
import 'package:feature_quest/src/ui/detail/quest_detail_page_state_machine.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class QuestDetailPage extends HookConsumerWidget {
  const QuestDetailPage({
    required String questId,
    super.key,
  }) : _questId = questId;

  final String _questId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateMachineProvider = questDetailPageStateMachineProvider(
      questId: _questId,
    );
    final state = ref.watch(stateMachineProvider);

    return StatelessQuestDetailPage(
      quest: state.quest,
    );
  }
}

final class StatelessQuestDetailPage extends StatelessWidget {
  const StatelessQuestDetailPage({
    required AsyncValue<Quest?> quest,
    super.key,
  }) : _quest = quest;

  final AsyncValue<Quest?> _quest;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: AsisAppBar(
        title: const Text('Quest detail'),
      ),
      body: _quest.when(
        data: (quest) {
          return quest != null
              ? QuestListTile(
                  quest: quest,
                  onTap: (quest) {},
                )
              : const SizedBox();
        },
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
