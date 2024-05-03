import 'package:core_model/quest.dart';

sealed class QuestPageAction {
  const QuestPageAction();

  factory QuestPageAction.addQuestButtonTapped({required Quest quest}) =>
      AddQuestButtonTapped(quest: quest);
}

final class AddQuestButtonTapped extends QuestPageAction {
  AddQuestButtonTapped({required this.quest});

  final Quest quest;
}
