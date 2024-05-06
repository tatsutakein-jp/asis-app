import 'package:core_domain/quest_use_case.dart';
import 'package:feature_quest/src/ui/quest/quest_page_action.dart';
import 'package:feature_quest/src/ui/quest/quest_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_page_state_machine.g.dart';

@riverpod
class QuestPageStateMachine extends _$QuestPageStateMachine {
  @override
  QuestPageState build() {
    final questListStream = ref.watch(questListStreamUseCaseProvider);
    return QuestPageState(quests: questListStream);
  }

  void dispatch(QuestPageAction action) {
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
