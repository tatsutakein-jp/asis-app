import 'package:core_domain/quest_use_case.dart';
import 'package:feature_quest/src/ui/page/add/quest_add_page_action.dart';
import 'package:feature_quest/src/ui/page/add/quest_add_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_add_page_state_machine.g.dart';

@riverpod
class QuestAddPageStateMachine extends _$QuestAddPageStateMachine {
  @override
  QuestAddPageState build() {
    return QuestAddPageState(
      name: '',
    );
  }

  Future<void> dispatch(QuestAddPageAction action) async {
    switch (action) {
      case AddQuestButtonTapped(:final quest):
        ref.read(addQuestUseCaseProvider(quest: quest));
    }
  }
}
