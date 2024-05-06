import 'package:core_model/quest.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'quest_detail_page_state.freezed.dart';

@freezed
class QuestDetailPageState with _$QuestDetailPageState {
  factory QuestDetailPageState({
    required AsyncValue<Quest?> quest,
  }) = _QuestDetailPageState;
}
