import 'dart:math';

import 'package:core_designsystem/component.dart';
import 'package:core_model/quest.dart';
import 'package:feature_quest/src/ui/page/add/quest_add_page_action.dart';
import 'package:feature_quest/src/ui/page/add/quest_add_page_state_machine.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class QuestAddPage extends HookConsumerWidget {
  const QuestAddPage({
    required void Function() onAddQuestCompleted,
    super.key,
  }) : _onAddQuestCompleted = onAddQuestCompleted;

  final VoidCallback _onAddQuestCompleted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(questAddPageStateMachineProvider.notifier);

    return StatelessQuestAddPage(
      onTapAddQuestButton: (quest) async {
        await notifier.dispatch(AddQuestButtonTapped(quest: quest));
        _onAddQuestCompleted();
      },
    );
  }
}

final class StatelessQuestAddPage extends StatelessWidget {
  const StatelessQuestAddPage({
    required void Function(Quest) onTapAddQuestButton,
    super.key,
  }) : _onTapAddQuestButton = onTapAddQuestButton;

  final void Function(Quest quest) _onTapAddQuestButton;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: AsisAppBar(
        title: const Text('Quest add'),
      ),
      body: const Text('Quest add'),
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
          _onTapAddQuestButton(
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
