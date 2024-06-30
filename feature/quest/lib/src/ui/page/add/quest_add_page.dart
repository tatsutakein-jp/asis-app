import 'package:core_designsystem/component.dart';
import 'package:core_domain/quest_use_case.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
import 'package:feature_quest/src/ui/component/quest_form.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class QuestAddPage extends HookConsumerWidget {
  const QuestAddPage({
    required void Function() onAddQuestCompleted,
    super.key,
  }) : _onAddQuestCompleted = onAddQuestCompleted;

  final VoidCallback _onAddQuestCompleted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return AsisScaffold(
      appBar: AsisAppBar(
        title: Text(l10n.questAddAppBarTitle),
      ),
      body: QuestForm(
        onSubmit: (title, description, note) async {
          await ref.read(
            addQuestUseCaseProvider(
              title: title,
              description: description,
              note: note,
            ),
          );
          _onAddQuestCompleted();
        },
      ),
    );
  }
}
