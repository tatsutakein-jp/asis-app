import 'package:core_designsystem/component.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
import 'package:feature_quest/src/ui/page/detail/component/quest_content.dart';
import 'package:flutter/material.dart';

/// クエスト詳細ページ
final class QuestDetailPage extends StatelessWidget {
  const QuestDetailPage({
    required String questId,
    super.key,
  }) : _questId = questId;

  final String _questId;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return AsisScaffold(
      appBar: AsisAppBar(
        title: Text(l10n.questDetailAppBarTitle),
      ),
      body: QuestContent(
        questId: _questId,
      ),
    );
  }
}
