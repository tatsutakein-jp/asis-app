import 'package:core_model/quest.dart';
import 'package:flutter/material.dart';

final class QuestListTile extends StatelessWidget {
  const QuestListTile({
    required Quest quest,
    super.key,
  }) : _quest = quest;

  final Quest _quest;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(_quest.name),
        subtitle: Text(_quest.description),
        trailing: Icon(Icons.arrow_forward_ios),
      );
}
