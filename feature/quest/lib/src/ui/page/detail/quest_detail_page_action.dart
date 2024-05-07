import 'package:core_model/quest.dart';

sealed class QuestDetailPageAction {
  const QuestDetailPageAction();

  factory QuestDetailPageAction.addQuestButtonTapped({required Quest quest}) =>
      AddQuestButtonTapped(quest: quest);
}

final class AddQuestButtonTapped extends QuestDetailPageAction {
  AddQuestButtonTapped({required this.quest});

  final Quest quest;
}
