import 'package:core_model/quest.dart';

sealed class QuestListPageAction {
  const QuestListPageAction();

  factory QuestListPageAction.addQuestButtonTapped({required Quest quest}) =>
      AddQuestButtonTapped(quest: quest);
}

final class AddQuestButtonTapped extends QuestListPageAction {
  AddQuestButtonTapped({required this.quest});

  final Quest quest;
}
