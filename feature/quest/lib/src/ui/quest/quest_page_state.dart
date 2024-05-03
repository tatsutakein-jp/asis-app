import 'package:core_model/quest.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest_page_state.freezed.dart';

@freezed
class QuestPageState with _$QuestPageState {
  factory QuestPageState({
    required Stream<List<Quest>> quests,
  }) = _QuestPageState;
}
