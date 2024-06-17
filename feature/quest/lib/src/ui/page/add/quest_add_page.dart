import 'dart:math';

import 'package:core_designsystem/component.dart';
import 'package:core_model/quest.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
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
    final l10n = L10n.of(context);

    return AsisScaffold(
      appBar: AsisAppBar(
        title: Text(l10n.questAddAppBarTitle),
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
          _onTapAddQuestButton(
            addQuest,
          );
        },
        label: Text(l10n.questAddFormSubmit),
        icon: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
