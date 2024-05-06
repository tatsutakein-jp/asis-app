import 'package:core_domain/quest_use_case.dart';
import 'package:feature_quest/src/ui/list/quest_list_page_action.dart';
import 'package:feature_quest/src/ui/list/quest_list_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_list_page_state_machine.g.dart';

@riverpod
class QuestListPageStateMachine extends _$QuestListPageStateMachine {
  @override
  QuestListPageState build() {
    final questListStream = ref.watch(questListStreamUseCaseProvider);
    return QuestListPageState(quests: questListStream);
  }

  void dispatch(QuestListPageAction action) {
    switch (action) {
      case AddQuestButtonTapped(:final quest):
        Future(
          () async {
            final addQuest = ref.read(addQuestUseCaseProvider);
            await addQuest.execute((quest: quest));
          },
        );
    }
  }
}
