import 'package:core_model/quest.dart';

sealed class QuestAddPageAction {
  const QuestAddPageAction();

  factory QuestAddPageAction.addQuestButtonTapped({required Quest quest}) =>
      AddQuestButtonTapped(quest: quest);
}

final class AddQuestButtonTapped extends QuestAddPageAction {
  AddQuestButtonTapped({required this.quest});

  final Quest quest;
}
