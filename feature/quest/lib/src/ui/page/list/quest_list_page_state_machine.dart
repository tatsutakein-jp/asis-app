import 'package:core_domain/quest_use_case.dart';
import 'package:feature_quest/src/ui/page/list/quest_list_page_action.dart';
import 'package:feature_quest/src/ui/page/list/quest_list_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_list_page_state_machine.g.dart';

@riverpod
class QuestListPageStateMachine extends _$QuestListPageStateMachine {
  @override
  QuestListPageState build() {
    return QuestListPageState(
      quests: ref.watch(questListStreamUseCaseProvider),
    );
  }

  void dispatch(QuestListPageAction action) {
    switch (action) {
      case AddQuestButtonTapped(:final quest):
        ref.read(addQuestUseCaseProvider(quest: quest));
    }
  }
}
