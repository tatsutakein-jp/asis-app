import 'package:core_designsystem/component.dart';
import 'package:feature_home/src/gen/l10n/l10n.dart';
import 'package:feature_home/src/ui/page/home/component/quest_overview_section.dart';
import 'package:feature_home/src/ui/page/home/component/recent_quest_list_section.dart';
import 'package:flutter/material.dart';

/// ホームページ
final class HomePage extends StatelessWidget {
  const HomePage({
    required void Function() onTapNotification,
    super.key,
  }) : _onTapNotification = onTapNotification;

  final VoidCallback _onTapNotification;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return AsisScaffold(
      appBar: AsisAppBar(
        title: Text(l10n.homeAppBarTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: _onTapNotification,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...[
                QuestOverviewSection(
                  onQuickAddButtonPressed: () {},
                ),
                RecentQuestListSection(
                  onTapQuestListItem: (quest) {},
                  onMoreButtonPressed: () {},
                ),
              ].expand(
                (widget) => [
                  widget,
                  const Gap(24),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
