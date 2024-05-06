import 'dart:math';

import 'package:core_designsystem/component.dart';
import 'package:core_model/quest.dart';
import 'package:core_ui/quest_list_title.dart';
import 'package:feature_quest/src/ui/detail/quest_detail_page_action.dart';
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
    final notifier = ref.watch(stateMachineProvider.notifier);

    return StatelessQuestDetailPage(
      quest: state.quest,
      onAddQuestButtonTapped: (quest) {
        notifier.dispatch(AddQuestButtonTapped(quest: quest));
      },
    );
  }
}

final class StatelessQuestDetailPage extends StatelessWidget {
  const StatelessQuestDetailPage({
    required AsyncValue<Quest> quest,
    required void Function(Quest) onAddQuestButtonTapped,
    super.key,
  })  : _quest = quest,
        _onAddQuestButtonTapped = onAddQuestButtonTapped;

  final AsyncValue<Quest> _quest;
  final void Function(Quest quest) _onAddQuestButtonTapped;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: AsisAppBar(
        title: const Text('Quest'),
      ),
      body: _quest.when(
        data: (quest) {
          return QuestListTile(
            quest: quest,
          );
        },
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final randomNumber = Random().nextInt(2147483647);

          final addQuest = Quest(
            id: '$randomNumber',
            name: 'Quest $randomNumber',
            description: 'Description $randomNumber',
            body: 'Body $randomNumber',
          );
          print(addQuest);
          _onAddQuestButtonTapped(
            addQuest,
          );
        },
        label: const Text('クエストを追加する'),
        icon: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
