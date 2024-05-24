import 'package:core_designsystem/component.dart';
import 'package:core_model/quest.dart';
import 'package:feature_quest/src/ui/page/list/component/quest_list.dart';
import 'package:flutter/material.dart';

/// クエスト一覧ページ
final class QuestListPage extends StatelessWidget {
  const QuestListPage({
    required void Function(Quest) onTapQuestListItem,
    required void Function() onTapQuestAddButton,
    super.key,
  })  : _onTapQuestListItem = onTapQuestListItem,
        _onTapQuestAddButton = onTapQuestAddButton;

  final void Function(Quest quest) _onTapQuestListItem;
  final VoidCallback _onTapQuestAddButton;

  @override
  Widget build(BuildContext context) {
    return AsisScaffold(
      appBar: const AsisAppBar(
        title: Text('Quest'),
      ),
      body: QuestList(
        onTapQuestListItem: _onTapQuestListItem,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _onTapQuestAddButton,
        label: const Text('クエストを追加する'),
        icon: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
