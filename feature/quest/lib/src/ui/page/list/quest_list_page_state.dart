import 'package:core_model/quest.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'quest_list_page_state.freezed.dart';

@freezed
class QuestListPageState with _$QuestListPageState {
  factory QuestListPageState({
    required AsyncValue<List<Quest>> quests,
  }) = _QuestListPageState;
}
