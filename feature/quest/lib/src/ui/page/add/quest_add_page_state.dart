import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest_add_page_state.freezed.dart';

@freezed
class QuestAddPageState with _$QuestAddPageState {
  factory QuestAddPageState({
    required String name,
  }) = _QuestAddPageState;
}
