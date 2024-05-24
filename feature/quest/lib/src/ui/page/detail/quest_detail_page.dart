import 'package:core_designsystem/component.dart';
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
    return AsisScaffold(
      appBar: const AsisAppBar(
        title: Text('Quest detail'),
      ),
      body: QuestContent(
        questId: _questId,
      ),
    );
  }
}
