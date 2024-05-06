import 'package:core_model/quest.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'quest_page_state.freezed.dart';

@freezed
class QuestPageState with _$QuestPageState {
  factory QuestPageState({
    required AsyncValue<List<Quest>> quests,
  }) = _QuestPageState;
}
