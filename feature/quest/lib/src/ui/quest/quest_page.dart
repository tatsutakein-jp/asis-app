import 'dart:math';

import 'package:core_designsystem/component.dart';
import 'package:core_model/quest.dart';
import 'package:core_ui/quest_list_title.dart';
import 'package:feature_quest/src/ui/quest/quest_page_action.dart';
import 'package:feature_quest/src/ui/quest/quest_page_state_machine.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class QuestPage extends HookConsumerWidget {
  const QuestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questPageStateMachineProvider);
    final notifier = ref.watch(questPageStateMachineProvider.notifier);

    return StatelessQuestPage(
      quests: state.quests,
      onAddQuestButtonTapped: (quest) {
        notifier.dispatch(AddQuestButtonTapped(quest: quest));
      },
    );
  }
}

final class StatelessQuestPage extends StatelessWidget {
  const StatelessQuestPage({
    required Stream<List<Quest>> quests,
    required void Function(Quest) onAddQuestButtonTapped,
    super.key,
  })  : _quests = quests,
        _onAddQuestButtonTapped = onAddQuestButtonTapped;

  final Stream<List<Quest>> _quests;
  final void Function(Quest quest) _onAddQuestButtonTapped;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: AsisAppBar(
        title: const Text('Quest'),
      ),
      body: StreamBuilder(
        stream: _quests,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final quests = snapshot.requireData;
            print(quests.length);

            return ListView.builder(
              itemCount: quests.length,
              itemBuilder: (context, index) => QuestListTile(
                quest: quests[index],
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
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
