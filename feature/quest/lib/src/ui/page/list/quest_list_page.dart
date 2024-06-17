import 'package:core_designsystem/component.dart';
import 'package:core_model/quest.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
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
    final l10n = L10n.of(context);

    return AsisScaffold(
      appBar: AsisAppBar(
        title: Text(l10n.questListAppBarTitle),
      ),
      body: QuestList(
        onTapQuestListItem: _onTapQuestListItem,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _onTapQuestAddButton,
        label: Text(l10n.questListAddQuest),
        icon: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
